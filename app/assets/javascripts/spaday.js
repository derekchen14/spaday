window.Spaday = {
  Models: {},
  Collections: {},
  Views: {}, 
  Routers: {}, 
  initialize: function(){
    var spadayRouter = new SpadayRouter();
    Backbone.history.start();
  }
}

$(document).ready(function(){
  return Spaday.initialize();
});
