app.ActivityView = Backbone.View.extend
	tagName: 'div'
	className: 'activityContainer'
	#template: _.template $('#activityTemplate').html()
	template: _.template '<h3><%= title %></h3>'

	events:
    'click .delete': 'deleteActivity'

	render: ->
    attrs = this.model.toJSON();
    @.$el.html @.template(attrs)
    @
	deleteActivity: ->
    this.model.destroy()
    this.remove()