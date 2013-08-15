app.SpadayRouter = Backbone.Router.extend
  routes:
    '': 'index'
    'activities/:id': 'show'
  
  initialize: ->
    @.collection = new app.Schedule()
    @.collection.reset $('#activities').data('activities')


	# Get an array of all activities

###
	get: (request, response) ->
		return Activity.find( ( err, activities ) ->
			unless (err)
				return response.send activities
			else
				return console.log err
###


# 'activities/:id'  GET          Get the book with id of :id
# 'activities'      POST         Add a new book and return the book with an id attribute added
# 'activities/:id'  PUT          Update the book with id of :id
# 'activities/:id'  DELETE       Delete the book with id of :id

