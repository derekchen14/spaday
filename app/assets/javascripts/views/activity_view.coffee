app.ActivityView = Backbone.View.extend
	tagName: 'div'
	className: 'activityContainer'
	# template: _.template $('#activityTemplate').html()

	events:
    'click .delete': 'deleteActivity'

  initialize: ->
  	console.log 'model has been initialized'
  	@.template = _.template $('#activityTemplate').html()
	render: ->
    attrs = this.model.toJSON();
    @.$el.html @.template(attrs)
    @
	deleteActivity: ->
    this.model.destroy()
    this.remove()