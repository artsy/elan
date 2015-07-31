{ loginPath, logoutPath } = require('artsy-passport').options

isOk = (req) ->
  req.user? or
  req.path is loginPath or
  req.path is logoutPath

module.exports = (req, res, next) ->
  if isOk req
    next()
  else
    res.redirect loginPath
