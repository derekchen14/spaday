var Entries = Backbone.Collection.extend({
  url: '/api/entries',

  drawWinner: function(){
    var winner = this.shuffle()[0];
    if(winner){
      winner.set({winner: true});
      winner.save();
      winner.trigger('highlight');
    }
  }
});
