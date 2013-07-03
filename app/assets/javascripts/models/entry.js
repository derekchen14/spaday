var Entry = Backbone.Model.extend({

  defaults: {
    completed: false
  },

  toggle: function(){
    this.save({
      completed: !this.get('completed')
    });
  }


});
