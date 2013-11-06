# This mixin adds support for being notified every time the browser window is scrolled.
Rashomon.ScrollingMixin = Ember.Mixin.create

  # Begin watching for scroll events.
  # by default they will be called at max every 100ms.
  # call with {debounce: N} for a diff time
  bindScrolling: (opts) ->
    opts = opts || {debounce: 100}

    # TODO implement debounce()
    #if opts.debounce
      #onScrollMethod = Rashomon.debounce =>
        #@scrolled()
      #, 100
    #else
      #onScrollMethod = => @scrolled()

    onScrollMethod = => @scrolled()
    Rashomon.ScrollingDOMMethods.bindOnScroll(onScrollMethod)


  # Stop watching for scroll events.
  unbindScrolling: ->
    Rashomon.ScrollingDOMMethods.unbindOnScroll()

  scrolled: ->
    console.error('scrolled() not implemented yet!')

# This object provides the DOM methods we need for our Mixin to bind to scrolling
# methods in the browser. By removing them from the Mixin we can test them easier.
Rashomon.ScrollingDOMMethods =
  bindOnScroll: (onScrollMethod) ->
    $(window).on("scroll", onScrollMethod)
    #$(document).bind("touchMove", onScrollMethod)

  unbindOnScroll: ->
    $(window).off("scroll")
    #$(document).unbind("touchMove")
