Rashomon.ApplicationView = Ember.View.extend
  didInsertElement: ->
    target = $("##{@get('controller.currentScrollElement')}")

    # XXX Hardcode here with header-height
    unless Ember.isEmpty(target)
      $('html, body').animate
        scrollTop: target.offset().top - 100,
        800
