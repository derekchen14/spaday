window.Spaday = {
  Models: {},
  Views: {}, 
  Collections: {},
  Routers: {}, 
  initialize: function(preload){
    var spadayRouter = new SpadayRouter();
    Backbone.history.start({pushState: true});
    new app.ScheduleView( preload );
  }
}

$(document).ready(function(){
  var preloaded_activities = [
    { title: 'Austin', instructor: 'Brian', 
    	time: '2008', location: 'Carlsbad' },
    { title: 'Denver', instructor: 'Edward'},
    { title: 'Frankfurt', instructor: 'George', 
    	time: '2008', location: 'Harrisburg' }
  ];
  return Spaday.initialize(preloaded_activities);
});
