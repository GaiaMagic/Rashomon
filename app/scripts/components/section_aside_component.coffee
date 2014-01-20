# It seems like we can't pass Array from template,
# so I do a trick in init() which parsing String to Array
Rashomon.SectionAsideComponent = Ember.Component.extend Rashomon.ScrollingMixin,
  tagName: false
  asideClass: 'aside'
  asidePosition: null

  init: ->
    @_super()
    @set('links', JSON.parse(@get('links')))

  didInsertElement: ->
    @bindScrolling(debounce: 0)

  scrolled: ->
    aside = $(".#{@get('asideClass')}")
    windowTop = $(window).scrollTop()
    headerHeight = 80 # XXX Hardcode here with header-height

    @set('asidePosition', aside.offset().top) unless @get('asidePosition')
    asideTop = @get('asidePosition')

    if asideTop < windowTop + headerHeight
      aside.addClass('sticky')
    else
      aside.removeClass('sticky')
