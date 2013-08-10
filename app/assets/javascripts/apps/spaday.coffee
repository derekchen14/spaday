window.app =
  Models: {}
  Views: {} 
  Collections: {}
  Routers: {}
  initialize: ->
    activities = [
      {title: 'a', instructor: 'b', time: '2008', location: 'c'}
      {title: 'e', instructor: 'f', time: '2012', location: 'g'}
      {title: 'h', instructor: 'i', time: '2009', location: 'j'}
    ]

    foo = new app.ScheduleView activities
    bar = new app.Activity 
    spadayRouter = new app.SpadayRouter()
    Backbone.history.start({pushState: true})

$ ->
  app.initialize()
