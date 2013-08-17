app.ActivityView = Backbone.View.extend
  template: JST['templates/activity/new']
	tagName: 'div'
	className: 'activityContainer'
	# template: _.template $('#activityTemplate').html()

	events:
    'click .delete': 'deleteActivity'

  initialize: ->
  	# @.template = _.template $('#activityTemplate').html()
	render: ->
    attrs = @.model.toJSON()
    @.$el.html @.template(attrs)
    @.el
	deleteActivity: ->
    @.model.destroy()
    @.remove()