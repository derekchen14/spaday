app.ScheduleView = Backbone.View.extend
  el: '#container'
  events:
    'click #add': 'addActivity'
    'click .instructor': 'terraCotta'

  initialize: (preloaded_activities) ->
    @.collection = new app.Schedule(preloaded_activities)
    # @.collection.fetch {reset: true}
    @.render()

    @.listenTo @.collection, 'add', @.renderActivity
    @.listenTo @.collection, 'reset', @.render
    # console.log @.options[0].time
    @.template = $('#activityTemplate').html()

  render: ->
    @.collection.each( (item) ->
      @.renderActivity(item)
    ,@)

  renderActivity: (item) ->
    activityView = new app.ActivityView {model: item}
    @.$el.append activityView.render().el

  addActivity: (e) -> 
    e.preventDefault()
    formData = {}
    $('#addActivity div').children('input').each (i,el) ->
      if $(el).val() != ''
        formData[ el.id ] = $(el).val()
    @.collection.create(formData)

  terraCotta: (e) ->
    $('#activityList').append(@.template)
    console.log 'it clicked'