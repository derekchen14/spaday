var SpadayRouter = Backbone.Router.extend({

  routes:{
    '': 'index',
    'activities/:id': 'show'
  },
  initialize: function(){
    this.collection = new activities();
    this.collection.reset($('#container').data('activities'));
  },
  index: function(){
    var view = new ActivitiesIndex({collection: this.collection});
    $("#container").html(view.render().el);
  },
  show: function(id){
    var info = new ActivityInfo({collection: this.collection});
    $("#container").html(info.render().el);
  }

});


