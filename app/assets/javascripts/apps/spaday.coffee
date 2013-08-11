window.app =
  Models: {}
  Views: {} 
  Collections: {}
  Routers: {}
  initialize: (data) ->
    spadaySchedule = new app.ScheduleView data
    spadayRouter = new app.SpadayRouter()
    Backbone.history.start()
    # {pushState: true}

$ ->
  preloaded_activities = [
    {title: 'a', instructor: 'b', time: '2008', location: 'c'}
    {title: 'e', instructor: 'f', time: '2012', location: 'g'}
    {title: 'h', instructor: 'j', time: '2009', location: 'k'}
  ]
  app.initialize(preloaded_activities)