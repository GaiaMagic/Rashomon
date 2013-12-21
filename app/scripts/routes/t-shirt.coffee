Rashomon.TShirtRoute = Ember.Route.extend Rashomon.PositionScrollableRouteMixin,
  model: (params) ->
    @_super(params)
    Rashomon.TShirtQnAFixtures
