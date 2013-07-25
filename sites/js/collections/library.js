var app = app || {};

app.Library = Backbone.Collection.extend({
  model: app.Book,

	events:{
	  'click #add':'addBook'
	},

	addBook: function( e ) {
    e.preventDefault();
    var formData = {};

    $( '#addBook div' ).children( 'input' ).each( function( i, el ) {
      if( $( el ).val() != '' ){
        formData[ el.id ] = $( el ).val();
      }
    });

    this.collection.add( new app.Book( formData ) );
	}

});