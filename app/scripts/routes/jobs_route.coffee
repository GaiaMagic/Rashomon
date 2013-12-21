Rashomon.JobsRoute = Ember.Route.extend Rashomon.PositionScrollableRouteMixin,
  model: (params) ->
    @_super(params)
    Rashomon.JobsFixtures
