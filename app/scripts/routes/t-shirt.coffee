Rashomon.TShirtRoute = Ember.Route.extend Rashomon.ScrollableRouteMixin,
  model: (params) ->
    @_super(params)
    Rashomon.TShirtQnAFixtures
