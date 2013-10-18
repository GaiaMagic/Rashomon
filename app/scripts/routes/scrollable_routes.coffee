Rashomon.ProductsRoute = Ember.Route.extend Rashomon.ScrollableRouteMixin,
  renderTemplate: -> @render('index')

Rashomon.IndexRoute = Ember.Route.extend(Rashomon.ScrollableRouteMixin)
Rashomon.ProductsMusicianguideRoute = Ember.Route.extend(Rashomon.ScrollableRouteMixin)
