app.Activity = Backbone.Model.extend
	defaults:
	  coverImage: 'img/placeholder.png'
	  title: 'No title'
	  instructor: 'Unknown'
	  time: 'sometime'
	  location: 'somewhere'

	parse: (response) ->
  	response.id = response._id
  	response