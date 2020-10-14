const createError = require('http-errors');
const express = require('express');
const app = express();
const path = require('path');
const cookieParser = require('cookie-parser');
const logger = require('morgan');

const bodyParser = require('body-parser')
app.use(bodyParser.json())

const {verifyAccessToken} = require('./config/jwt')

/* Middleware */
const cors = require('cors')
app.use(cors());
app.use((req, res, next) => {
    res.header('Access-Control-Allow-Origin', '*');
    res.header('Access-Control-Allow-Methods', 'GET,PUT,POST,DELETE,PATCH,OPTIONS');
    res.header("Access-Control-Allow-Headers", "Origin, X-Requested-With, Content-Type, Authorization, Accept, x-access-token, x-refresh-token");
    res.header(
        'Access-Control-Expose-Headers',
        'x-access-token, x-refresh-token'
    );
    next();
});

app.get('/', verifyAccessToken, async (req, res, next) => {
    res.send('Inside protected route.')
})

const authRouter = require('./controllers/auth')
const usersRouter = require('./routes/users')
const productRouter = require('./routes/products')

app.use('/api/auth', authRouter)
app.use('/api/users', usersRouter)
app.use('/api/products', productRouter)

app.use(logger('dev'));
app.use(express.json());
app.use(express.urlencoded({extended: true}));
app.use(cookieParser());

app.use(async (req, res, next) => {
    next(createError.NotFound());
})

app.use(async (err, req, res, next) => {
    res.status(err.status || 500)
    res.send({
        error: {
            status: err.status || 500,
            message: err.message
        }
    })
})

const port = process.env.PORT || 3000
app.listen(port, () => {
    console.log(`Server running on port ${port}`)
})