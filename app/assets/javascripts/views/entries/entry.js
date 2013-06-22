var Entry = Backbone.View.extend({
  template: JST['entries/entry'],
  tagName: 'li',
  events: {
    'click': 'showEntry'
  },

  initialize: function(){
    this.model.on('change', this.render, this);
    this.model.on('highlight', this.highlightWinner, this);
  },

  render: function() {
    var text = {entry: this.model} 
    this.$el.html(this.template(text));
    return this
  },

  highlightWinner: function() {
    $('.winner').removeClass('highlight');
    this.$('.winner').addClass('highlight');
  },
  showEntry: function() {
    Backbone.history.navigate("entries/"+(this.model.get('id')), true)
  }

});
