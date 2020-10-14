const express = require('express');
const router = express.Router();
const bcrypt = require('bcryptjs');
const createError = require('http-errors');
require('dotenv').config()

const {database} = require('../config/db');
const {signAccessToken, signRefreshToken, verifyRefreshToken} = require('../config/jwt');
const {authSchema} = require('../config/validation_schema');

router.post('/register', async (req, res, next) => {
    let customer = 'customer'
    try {
        const result = await authSchema.validateAsync(req.body)

        // Email is already registered
        const doesExit = await database.table('users').filter({email: result.email}).get();
        if (doesExit) throw createError({message: `${result.email} is already registered`})

        // Hash password
        const salt = bcrypt.genSaltSync(10);

        let hashPw = bcrypt.hashSync(result.password, salt, (err, res) => {
            result.password = res;
        });

        await database.table('users')
            .insert({
                email: result.email,
                password: hashPw,
                firstname: result.firstname,
                lastname: result.lastname,
                role: customer
            }).catch(err => console.log(err));

        res.send("Register Successfully")
    } catch (error) {
        if (error.isJoi === true) error.status = 422
        next(error)
    }
})

router.post('/login', async (req, res, next) => {
    try {
        const result = await authSchema.validateAsync(req.body)
        const user = await database.table('users').filter({email: result.email}).get();

        // Check email
        if (!user) throw createError.NotFound('User not registered') // 404

        // Compare password
        try {
            const isMatch = await bcrypt.compare(result.password, user.password);
            if (!isMatch) throw createError.Unauthorized('Your password is incorrect') // 401
        } catch (error) {
            throw error
        }

        // Access token
        let accessToken = await signAccessToken(user.id)

        // Refresh token
        let refreshToken = await signRefreshToken(user.id)

        res.status(201).json({
            accessToken, refreshToken,
            id: user.id,
            lastname: user.lastname,
            firstname: user.firstname,
            email: result.email,
            role: user.role
        })
    } catch (error) {
        if (error.isJoi === true) return next(createError.BadRequest('Incorrect email or password type.')) // 400
        next(error)
    }
})

router.post('/refresh-token', async (req, res, next) => {
    try {
        const {refreshToken} = req.body
        if (!refreshToken || !refreshToken.includes(refreshToken)) throw createError.Unauthorized()

        const userID = await verifyRefreshToken(refreshToken)
        const accessToken = await signAccessToken(userID)

        res.send({accessToken: accessToken})
    } catch (err) {
        next(err)
    }
})

module.exports = router;