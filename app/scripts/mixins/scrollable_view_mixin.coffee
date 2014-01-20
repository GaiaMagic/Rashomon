Rashomon.ScrollableViewMixin = Ember.Mixin.create
  didInsertElement: ->
    scrollTo = window.location.hash.substr(2).split('/').join('-')

    if Ember.isEmpty(scrollTo)
      scrollTo = 'index'

    target = $("##{scrollTo}")

    # XXX hardcode here with header-height
    unless Ember.isEmpty(target)
      $('html, body').animate
        scrollTop: target.offset().top - 80,
        800

