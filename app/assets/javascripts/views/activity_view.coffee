app.ActivityView = Backbone.View.extend
	tagName: 'div'
	className: 'activityContainer'
  # template: _.template $('h1').html()
	template: _.template '<h2>Foobar</h2>'
	
	events:
    'click .delete': 'deleteActivity'

	render: ->
    attrs = this.model.toJSON();
    @.$el.html this.template(attrs)
    @
	deleteActivity: ->
    this.model.destroy()
    this.remove()