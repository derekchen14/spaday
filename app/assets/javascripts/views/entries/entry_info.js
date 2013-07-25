var EntryInfo = Backbone.View.extend({
	template: JST['entries/info'],
	events: {
		'click #goBack': 'goBack'
	},

  initialize: function(){
    this.collection.on('change', this.render, this);
  },

	render: function(){
		this.$el.html(this.template());
		return this
	},
	goBack: function(e) {
		e.preventDefault();
		Backbone.history.navigate("", true)
	}

});
