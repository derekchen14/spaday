app.ActivityView = Backbone.View.extend
	tagName: 'div'
	className: 'activityContainer'
	template: _.template '<h1><%= title %></h1>' 
	# $('h1').html()

	events:
    'click .delete': 'deleteActivity'

	render: ->
    attrs = this.model.toJSON();
    @.$el.html @.template(attrs)
    @
	deleteActivity: ->
    this.model.destroy()
    this.remove()