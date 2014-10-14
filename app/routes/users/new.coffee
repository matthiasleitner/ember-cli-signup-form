route = Ember.Route.extend(
  model: ->
    @store.createRecord "user"
)

`export default route;`