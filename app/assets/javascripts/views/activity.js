app.ActivityView = Backbone.View.extend({
  tagName: 'div',
  className: 'activityContainer',
  template: _.template( $( '#activityTemplate' ).html() ),

  render: function() {
    //this.el is what we defined in tagName.
    //use $el to get access to jQuery html() function
    this.$el.html( this.template( this.model.toJSON() ) );

    return this;
  }
});