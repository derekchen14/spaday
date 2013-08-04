# Define the classes with the namespace Spaday. 
# Run the app and the instantiated classes will be
# under the namespace Spaday for access during runtime.
window.Spaday =
  Routers : {}
  Models : {}
  Controllers : {}
  Collections : {}
  Views : 
    Items : {}
    Collections : {}
    Regions : {}
    Composites : {}
    Layouts : {}
  Helpers : {}
  App : {}

  init : ->
    # Instantiate the app
    window.spaday = new Spaday.App()

    # Using the Marionette Application class, set initialize:after
    spaday.bind 'initialize:after', (options) ->
      # Start the router
      @router = new Spaday.Routers.SpadaySignedIn()

      # Start the controllers, which are static
      @initializeControllers()

      # Start the chrome layout view
      @initializeChrome()

     # Start Backbone history
     if Backbone.history then Backbone.history.start pushState : true

  # Start the app
  spaday.start()

# Define the class Spaday.App
class Spaday.App extends Backbone.Marionette.Application
  
  start : ->
    @setApplicationVariables()

    # Do this before controllers, might need functionality
    @initializeHelpers()

  setApplicationVariables : ->
    # Object where we place all of our controllers 
    @controller = {}

    # Object where we place all of our helpers
    @helpers = {}

    # Our CRSF token, which we need for ajax form posts
    @csrf = $(document).find('meta[name="csrf-token"]').attr 'content'

  initializeHelpers : ->
    # Run through each object in the namespace and add it
    @_initializeObjects @helper, Spaday.Helpers

  initializeControllers : ->
    # Run through each object in the namespace and add it
    @_initializeObjects @controller, Spaday.Controllers
    
  _initializeObjects : (nameSpace, objs)->
    _.each objs, (obj, nameSpace) -·
        nameSpace[name.charAt(0).toLowerCase() + name.slice(1)] ?= new obj()

  initializeChrome : ->
    # Create the chrome layout
    @chrome = new Spaday.Layouts.Chrome()

    # Add the region body to the app (Marionette feature)
    @addRegions body : 'body'

    # Show the chrome
    @body.show @chrome

# Wait for document to be ready, then start up the app
$(document).ready -> 
  alert('coffeescript')
  Spaday.init()