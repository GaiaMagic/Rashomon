# It seems like we can't pass Array from template,
# so I do a trick here which parsing String to Array
Rashomon.SectionAsideComponent = Ember.Component.extend
  tagName: false

  init: ->
    @_super()
    @set('links', JSON.parse(@get('links')))