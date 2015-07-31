{ API_BASE } = require('sharify').data
Backbone = require 'backbone'

module.exports = class CurrentUser extends Backbone.Model
  url: "#{API_BASE}/me"

  sync: (method, model, options = {}) ->
    if method is 'read'
      options.data ?= {}
      options.data.access_token = @get 'accessToken'
    super
