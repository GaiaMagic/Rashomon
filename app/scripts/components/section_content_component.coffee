# It seems like we can't pass Array from template,
# so I do a trick in init() which parsing String to Array
Rashomon.SectionContentComponent = Ember.Component.extend
  tagName: false

  init: ->
    @_super()
    buttons = @get('buttons')
    @set('buttons', JSON.parse(buttons)) if buttons
