Rashomon.ProductsRoute = Ember.Route.extend Rashomon.PositionScrollableRouteMixin,
  model: (params) -> params.position
  renderTemplate: -> @render('index')
