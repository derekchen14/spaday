var EntriesIndex = Backbone.View.extend({
  template: JST['entries/index'],
  events: {
  	'submit #new_entry': 'addPeople',
    'click #draw': 'drawWinner'
  },

  initialize: function(){
    this.collection.on('reset', this.render, this);
    this.collection.on('add', this.appendEntry, this);
  },

  render: function(){
    this.$el.html(this.template());
    this.collection.each(this.appendEntry, this);
    return this
  },
  addPeople: function (e) {
  	e.preventDefault();
    attributes = { name: $('#new_entry_name').val() };
    this.collection.create( attributes, {
      wait: true,
      success: function() {
  	    $('#new_entry')[0].reset();
      },
      error: this.handleError
    });
  },

  handleError: function(entry, response){
    if (response.status == 422) {
      errors = $.parseJSON(response.responseText).errors
      for (attribute in errors){
        messages = errors[attribute];
        for(i=0; i < messages.length; i++){
          message = messages[i];
          alert(""+ attribute + " " + message);
        }
      }
    }
  },

  appendEntry: function (entry) {
  	var view = new Entry({model: entry});
  	this.$('#entries').append(view.render().el);
  },

  drawWinner: function(event) {
    event.preventDefault();
    this.collection.drawWinner();
  }

});