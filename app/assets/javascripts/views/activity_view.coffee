app.ActivityView = Backbone.View.extend
  tagName: 'div'
  className: 'activityContainer'
  # template: _.template $('#activityTemplate').html()
  # template: JST['templates/activity/new']

  events:
    'click .delete': 'deleteActivity'

  initialize: ->
    @.template = Handlebars.compile $("#activityTemplate").html()
  render: ->
    attrs = @.model.toJSON()
    @.$el.html @.template(attrs)
    @.el
  deleteActivity: ->
    @.model.destroy()
    @.remove()