Rashomon.ScrollableRouteMixin = Ember.Mixin.create
  model: (params) ->
    scrollTo = @routeName

    if params && params.position
      scrollTo = scrollTo + '-' + params.position

    target = $("##{scrollTo}")

    # XXX Hardcode here with header-height
    unless Ember.isEmpty(target)
      $('html, body').animate
        scrollTop: target.offset().top - 80,
        800

    params
