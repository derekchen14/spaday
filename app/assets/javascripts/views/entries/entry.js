var Entry = Backbone.View.extend({
  template: JST['entries/entry'],
  tagName: 'li',

  render: function(){
    var text = {entry: this.model} 
    this.$el.html(this.template(text));
    return this
  }

});