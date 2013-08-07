window.app =
  Models: {}
  Views: {} 
  Collections: {}
  Routers: {}
  initialize: ->
    bar = new app.Activity()
    spadayRouter = new SpadayRouter()
    Backbone.history.start({pushState: true})

$ ->
  app.initialize()