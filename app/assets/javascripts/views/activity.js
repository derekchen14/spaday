var app = app || {};

app.ActivityView = Backbone.View.extend({
  tagName: 'div',
  className: 'activityContainer',
  template: _.template('<h2>Foobar</h2>'),
  //$('#activityTemplate').html()

  render: function() {
    //this.el is what we defined in tagName
    //this.$el is used to access jQuery functionality
    this.$el.html( this.template( this.model.toJSON() ) );

    return this;
  }
});