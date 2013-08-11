app.SpadayRouter = Backbone.Router.extend
  routes:
    '': 'index'
    'activities/:id': 'show'
  
  initialize: ->
    @.collection = new app.Schedule()
    @.collection.reset $('#activities').data('activities')



