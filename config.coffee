_ = require 'ramda'

module.exports = _.pick process.env, [
  'FACEBOOK_ID'
  'FACEBOOK_SECRET'
  'TWITTER_KEY'
  'TWITTER_SECRET'
  'ARTSY_ID'
  'ARTSY_SECRET'
  'SECURE_ARTSY_URL'
  'APP_NAME'
  'APP_URL'
  'API_URL'
  'API_BASE'
  'SESSION_SECRET'
  'LOGIN_PATH'
  'LOGOUT_PATH'
]
