var express = require('express');
var router = express.Router();
const {database} = require('../config/db');

router.get('/', (req, res) => {
    let page = (req.query.page !== undefined && req.query.page !== 0) ? req.query.page : 1; // set the current page number
    const limit = (req.query.limit !== undefined && req.query.limit !== 0) ? req.query.limit : 18; // set the limit of items per page

    let startValue;
    let endValue;

    if (page > 0) {
        startValue = (page * limit) - limit;
        endValue = page * limit;
    } else {
        startValue = 0;
        endValue = 18;
    }

    database.table('products as p')
        .withFields([
            'p.title',
            'p.price',
            'p.quantity',
            'p.image',
            'p.another_CatName',
            'p.id'
        ])
        .slice(startValue, endValue)
        .sort({id: .1})
        .getAll()
        .then(prods => {
            if (prods.length > 0) {
                res.status(200).json({
                    count: prods.length,
                    products: prods
                })
            } else {
                res.json({message: 'No products found'})
            }
        }).catch(err => console.log(err));
});

module.exports = router;