require('dotenv').config()
const stripe_api_key = process.env.STRIPE_API_KEY
const express = require('express')
const bodyParser = require('body-parser')
var stripe = require('stripe')(stripe_api_key)
const app = express()

app.set('port', (process.env.PORT || 5000));
app.use(express.static(__dirname + '/public'));
app.set('views',  __dirname + '/views');
app.set('view engine', 'ejs');

app.use(bodyParser.json())
app.use(bodyParser.urlencoded({
    extended: true
}))

app.get('/', function(req, res) {
    res.send('Hello iOS')
})

app.post('/charge', (req, res) => {
    var description = req.body.description
    var amount = req.body.amount
    var currency = req.body.currency
    var token = req.body.stripeToken

    console.log(req.body)

    stripe.charges.create({
        source: token,
        amount: amount,
        currency: currency,
        description: description
    }, function(err, charge) {
        if (err) {
            console.log(err, req.body)
            res.status(500).end()
        } else {
            console.log('Success')
            res.status(200).send()
        }
    })
})

app.listen(app.get('port'), function() {
    console.log('Node app is runnnig on port', app.get('port'))
})

// //Local Host
// app.listen(3000, () => {
//     console.log('Local host runnnig on port 3000')
// })
