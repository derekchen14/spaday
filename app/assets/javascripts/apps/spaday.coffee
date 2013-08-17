window.app =
  Models: {}
  Views: {} 
  Collections: {}
  Routers: {}
  initialize: () ->
    spadaySchedule = new app.ScheduleView
    spadayRouter = new app.SpadayRouter
    Backbone.history.start({pushState: true})

$ ->
  app.initialize()

###  
  preloaded_activities = [
    {title: 'a', instructor: 'b', time: '2008', location: 'c'}
    {title: 'e', instructor: 'f', time: '2012', location: 'g'}
    {title: 'h', instructor: 'j', time: '2009', location: 'k'}
  ]
###