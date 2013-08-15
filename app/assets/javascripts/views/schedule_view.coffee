app.ScheduleView = Backbone.View.extend
  el: '#container'
  events:
    'click #add': 'addActivity'

  initialize: () ->
    # console.log @.options[1].time => '2012'
    @.collection = new app.Schedule()
    @.collection.fetch {reset: true}
    @.render()

    @.listenTo @.collection, 'add', @.renderActivity
    @.listenTo @.collection, 'reset', @.render
    @.listenTo @.collection, 'request', @.requestLog
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
    @.collection.create formData,

  requestLog: (data) ->
    console.log 'we send data right?'
    console.log data.attributes

  syncLog: (response) ->
    console.log 'we get response data?'
    console.log response

    # @.collection.add new Activity(formData)
    