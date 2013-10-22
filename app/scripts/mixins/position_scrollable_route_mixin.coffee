Rashomon.PositionScrollableRouteMixin = Ember.Mixin.create
  afterModel: (position) ->
    currentScrollElement = @routeName
    currentScrollElement = currentScrollElement + '-' + position if position
    @controllerFor('application').set('currentScrollElement', currentScrollElement)

    target = $("##{currentScrollElement}")

    # XXX Hardcode here with header-height
    unless Ember.isEmpty(target)
      $('html, body').animate
        scrollTop: target.offset().top - 100,
        800
