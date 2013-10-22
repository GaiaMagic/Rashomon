Rashomon.PositionScrollableRouteMixin = Ember.Mixin.create
  afterModel: (params) ->
    currentScrollElement = @routeName
    if params && params.position
      currentScrollElement = currentScrollElement + '-' + params.position

    @controllerFor('application').set('currentScrollElement', currentScrollElement)

    target = $("##{currentScrollElement}")

    # XXX Hardcode here with header-height
    unless Ember.isEmpty(target)
      $('html, body').animate
        scrollTop: target.offset().top - 100,
        800
