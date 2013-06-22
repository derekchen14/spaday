var Entries = Backbone.Collection.extend({
  url: '/api/entries',
  model: Entry,

  drawWinner: function(){
    var winner = this.shuffle()[0];
    if(winner){winner.win();}
  }
});
