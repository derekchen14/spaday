var SpadayRouter = Backbone.Router.extend({

  routes:{
    '': 'index',
    'entries/:id': 'show'
  },
  initialize: function(){
    this.collection = new Entries();
    this.collection.reset($('#container').data('entries'));
  },
  index: function(){
    var view = new EntriesIndex({collection: this.collection});
    $("#container").html(view.render().el);
  },
  show: function(id){
    alert("Entry "+id);
  }

});


