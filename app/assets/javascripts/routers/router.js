var SpadayRouter = Backbone.Router.extend({

  routes:{
    '': 'index',
    'entries/:id': 'show'
    
  },
  index: function(){
    var view = new EntriesIndex();
    $("#container").html(view.render().el);
  },
  show: function(id){
    alert("Entry "+id);
  }

});
