var Entry = Backbone.View.extend({
  template: JST['entries/entry'],
  tagName: 'li',
  events: {
    'dblclick label': 'edit',
    'keypress .edit': 'updateOnEnter'
  },

  initialize: function(){
    this.model.on('change', this.render, this);
    this.model.on('highlight', this.highlightWinner, this);
  },

  render: function() {
    var text = {entry: this.model.toJSON()} 
    this.$el.html(this.template(text));
    this.$input = this.$('.edit');
    return this
  },

  highlightWinner: function() {
    $('.winner').removeClass('highlight');
    this.$('.winner').addClass('highlight');
  },
  showEntry: function() {
    Backbone.history.navigate("entries/"+(this.model.get('id')), true)
  },

  edit: function(){
    this.$('.content').hide();
    this.$('.edit').show();
  },

  updateOnEnter: function(e){
    if ( e.which === 13){
      this.close();
    }
  },

  close: function(){
    var value = this.$input.val().trim();

    if(value){
      this.model.save({name: value});
    }

    this.$('content').show();
    this.$('.edit').hide();
  }

});
