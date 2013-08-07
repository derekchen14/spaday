window.app =
  Models: {}
  Views: {} 
  Collections: {}
  Routers: {}
  initialize: ->
    foo = new app.ScheduleView()
    bar = new app.Activity()
    spadayRouter = new app.SpadayRouter()
    Backbone.history.start({pushState: true})

$ ->
  app.initialize()