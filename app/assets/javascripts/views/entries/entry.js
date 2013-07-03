var Entry = Backbone.View.extend({
  template: JST['entries/entry'],
  tagName: 'li',
  events: {
    'click .content': 'toggleComplete',
    // 'dblclick label': 'edit',
    'keypress .edit': 'updateOnEnter',
    'click .destroy': 'clear'
  },

  initialize: function(){

    this.listenTo(this.model, 'change', this.render);
    this.listenTo(this.model, 'destroy', this.remove);
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
    this.$input.focus();
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
    }else{
      this.clear();
    }

    this.$('.content').show();
    this.$('.edit').hide();
  },

  clear: function(){
    this.model.destroy();
  },

  toggleComplete: function(){
    this.model.toggle();
  }

});
