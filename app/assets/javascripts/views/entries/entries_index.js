var EntriesIndex = Backbone.View.extend({
  template: JST['entries/index'],
  initialize: function(){
    this.collection.on('reset', this.render, this);
    this.collection.on('add', this.appendEntry, this);
  },

  events: {
  	'submit #new_entry': 'addPeople'
  },
  render: function(){
    this.$el.html(this.template());
    this.collection.each(this.appendEntry);
    return this
  },
  addPeople: function (e) {
  	e.preventDefault();
  	this.collection.create({name: $('#new_entry_name').val()});
  	$('#new_entry')[0].reset();
  },
  appendEntry: function (entry) {
  	var view = new Entry({model: entry});
  	$('#entries').append(view.render().el);
  }

});
