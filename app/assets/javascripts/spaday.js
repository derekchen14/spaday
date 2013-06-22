window.Spaday = {
  Models: {},
  Collections: {},
  Views: {}, 
  Routers: {}, 
  initialize: function(){
    var spadayRouter = new SpadayRouter();
    Backbone.history.start({pushState: true});
  }
}

$(document).ready(function(){
  return Spaday.initialize();
});
