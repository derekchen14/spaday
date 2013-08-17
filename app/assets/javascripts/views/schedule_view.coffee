app.ScheduleView = Backbone.View.extend
  el: '#container'
  events:
    'click #add': 'addActivity'

  initialize: () ->
    @.collection = new app.Schedule()
    @.collection.fetch {reset: true}
    @.render()

    @.listenTo @.collection, 'add', @.renderActivity
    @.listenTo @.collection, 'reset', @.render
    @.listenTo @.collection, 'sync', @.syncLog

  render: ->
    @.collection.each( (item) ->
      @.renderActivity(item)
    ,@)

  renderActivity: (item) ->
    activityView = new app.ActivityView {model: item}
    $('#activityList').append activityView.render()

  addActivity: (e) -> 
    e.preventDefault()
    formData = {}
    $('#addActivity div').children('input').each (i,el) ->
      if $(el).val() != ''
        formData[ el.id ] = $(el).val()
    @.collection.create formData

  syncLog: (response) ->
    console.log 'Data in the database:'
    console.log response
    