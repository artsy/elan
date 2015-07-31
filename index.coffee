express = require 'express'
# artsyXapp = require 'artsy-xapp'
setup = require './lib/setup'

module.exports = app = express()

setup app, -> app.listen process.env.PORT
