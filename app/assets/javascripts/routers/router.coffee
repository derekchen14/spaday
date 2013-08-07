app.SpadayRouter = Backbone.Router.extend
  routes:
    '': 'index'
    'activities/:id': 'show'
  
  initialize: ->
    this.collection = new app.Schedule()
    this.collection.reset $('#activities').data('activities')
  




