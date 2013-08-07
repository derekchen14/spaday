window.Spaday = {
  Models: {},
  Views: {}, 
  Collections: {},
  Routers: {}, 
  initialize: function(){
    var spadayRouter = new SpadayRouter();
    Backbone.history.start({pushState: true});
  }
}

$(document).ready(function(){
  var app = app || {};
  var preloaded_activities = [
    { title: 'Austin', instructor: 'Brian', 
    	time: '2008', location: 'Carlsbad' },
    { title: 'Denver', instructor: 'Edward'},
    { title: 'Frankfurt', instructor: 'George', 
    	time: '2008', location: 'Harrisburg' }
  ];
  new app.ScheduleView(preloaded_activities);
  return Spaday.initialize();
});
