var Entry = Backbone.Model.extend({

  defaults: {
    name: '',
    completed: false
  },

  toggle: function(){
    var value = !this.get('completed');
    this.save({
      completed: value
    });
  }


});
