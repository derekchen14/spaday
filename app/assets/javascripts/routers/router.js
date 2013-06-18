var SpadayRouter = Backbone.Router.extend({

  routes:{
    '': 'index',
    'entries/:id': 'show'
    
  },
  index: function(){
    alert("home page");
  },
  show: function(id){
    alert("Entry "+id);
  }

});
