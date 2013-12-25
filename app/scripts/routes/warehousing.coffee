Rashomon.WarehousingRoute = Ember.Route.extend Rashomon.ScrollableRouteMixin,
  model: (params) ->
    @_super(params)
    Rashomon.WarehousingQnAFixtures
