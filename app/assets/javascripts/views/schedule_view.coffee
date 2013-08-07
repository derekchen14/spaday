app.ScheduleView = Backbone.View.extend
  el: '#activities'
  events:
    'click #add':'addActivity'

  initialize: (init) ->
    @.collection = new app.Schedule()
    @.collection.fetch {reset: true}
    @.render()

    @.listenTo @.collection, 'add', @.renderActivity
    @.listenTo @.collection, 'reset', @.render

  render: =>
    @.collection.each (item) ->
      @.renderActivity( item )
  renderActivity: (item) ->
    activityView = new app.ActivityView
      model: item
    @.$el.append activityView.render().el

  addActivity: (e) -> 
    e.preventDefault()
    formData = {}
    $('#addActivity div').children('input').each (i,el) ->
      if $(el).val() != ''
        formData[ el.id ] = $(el).val()
    @.collection.create(formData)