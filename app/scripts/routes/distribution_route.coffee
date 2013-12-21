Rashomon.DistributionRoute = Ember.Route.extend Rashomon.PositionScrollableRouteMixin,
  model: (params) ->
    @_super(params)
    Rashomon.DistributionQnAFixtures
