const express = require('express')
const establishmentsController = require('./controllers/establishmentsController')

const app = express()

app.use(express.json())

app.get('/establishments', (req, res) => establishmentsController.getAll(req, res))

module.exports = app
