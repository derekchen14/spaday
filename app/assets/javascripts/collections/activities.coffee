app.Schedule = Backbone.Collection.extend({
    model: app.Activity,
    url: '/library'
});