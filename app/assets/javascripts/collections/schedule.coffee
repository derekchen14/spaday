app.Schedule = Backbone.Collection.extend({
    model: app.Activity,
    url: '/schedule'
})