_ = require 'ramda'
fs = require 'fs'
{ resolve } = require 'path'
express = require 'express'
logger = require 'morgan'
bodyParser = require 'body-parser'
cookieParser = require 'cookie-parser'
session = require 'cookie-session'
config = require '../config'

module.exports = (app, done) ->
  app.use logger('dev')
  app.use bodyParser.json()
  app.use bodyParser.urlencoded extended: true
  app.use cookieParser()

  switch process.env.NODE_ENV
    when 'development'
      require('../config/development')()
    when 'test'
      require('../config/test')()
    when 'production'
      require('../config/production')()

  app.use express.static(resolve __dirname, '../public')

  app.use require '../middleware/assets'

  # Mount apps
  app.use require '../apps/assets'
  app.use require '../apps/style_guide'

  done()
