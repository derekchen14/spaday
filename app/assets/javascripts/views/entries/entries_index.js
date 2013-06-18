var EntriesIndex = Backbone.View.extend({
  template: JST['entries/index'],
  initialize: function(){
    this.collection.on('reset', this.render, this);
  },
  render: function(){
    var text = {entries: this.collection} 
    this.$el.html(this.template(text));
    return this
  }
});
