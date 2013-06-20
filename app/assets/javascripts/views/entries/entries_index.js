var EntriesIndex = Backbone.View.extend({
  template: JST['entries/index'],
  initialize: function(){
    this.collection.on('reset', this.render, this);
    this.collection.on('add', this.render, this);
  },

  events: {
  	'submit #new_entry': 'addPeople'
  },
  render: function(){
    var text = {entries: this.collection} 
    this.$el.html(this.template(text));
    return this
  },
  addPeople: function (e) {
  	e.preventDefault();
  	this.collection.create({name: $('#new_entry_name').val()});
  }

});
