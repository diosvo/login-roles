var express = require('express');
var router = express.Router();
const { database } = require('../config/db');

// Validate Email
router.get('/validate/:email', (req, res) => {
  let email = req.params.email;

  database.table('users').filter({ email: email })
    .get()
    .then(user => {
      if (user) {
        res.json({ user: user, status: true });
      } else {
        res.json({ user: null, status: false });
      }
    })
    .catch(err => res.json(err));
});

module.exports = router;
