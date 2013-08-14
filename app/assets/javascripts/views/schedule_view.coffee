app.ScheduleView = Backbone.View.extend
  el: '#container'
  events:
    'click #add': 'addActivity'

  initialize: (preloaded_activities) ->
    # console.log @.options[1].time => '2012'
    @.collection = new app.Schedule(preloaded_activities)
    # @.collection.fetch {reset: true}
    @.render()

    @.listenTo @.collection, 'add', @.renderActivity
    @.listenTo @.collection, 'reset', @.render

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
    @.collection.create(formData)