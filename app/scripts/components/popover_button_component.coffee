Rashomon.PopoverButtonComponent = Ember.Component.extend
  popoverBtnClass: 'js-popover'

  didInsertElement: ->
    content = @get('content')
    btn = $(@get('element')).find('.' + @get('popoverBtnClass'))

    btn.popover
      html: true
      animation: false
      trigger: 'click'
      placement: 'top'
      content: content
