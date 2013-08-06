app.ScheduleView = Backbone.View.extend({
  el: '#activities',

  initialize: function( initialActivities ) {
    this.collection = new app.Schedule( initialActivities );
    this.render();
  },

  render: function() {
    this.collection.each(function( item ) {
      this.renderActivity( item );
    }, this );
  },

  // render a book by creating a BookView and appending the
  // element it renders to the schedule's element
  renderActivity: function( item ) {
    var activityView = new app.ActivityView({
      model: item
    });
    this.$el.append( activityView.render().el );
  }
});