# It seems like we can't pass Array from template,
# so I do a trick here which parsing String to Array
Rashomon.SectionContentComponent = Ember.Component.extend
  init: ->
    @_super()
    @set('buttons', JSON.parse(@get('buttons')))
