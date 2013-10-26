Rashomon.FooterLinkGroupComponent = Ember.Component.extend
  tagName: false

  init: ->
    @_super()
    @set('links', JSON.parse(@get('links')))
