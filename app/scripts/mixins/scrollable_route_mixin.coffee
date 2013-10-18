Rashomon.ScrollableRouteMixin = Ember.Mixin.create
  beforeModel: ->
    currentScrollElement = @routeName.replace('.', '-')
    @controllerFor('application').set('currentScrollElement', currentScrollElement)

    target = $("##{currentScrollElement}")

    # XXX Hardcode here with header-height
    unless Ember.isEmpty(target)
      $('html, body').animate
        scrollTop: target.offset().top - 100,
        600
