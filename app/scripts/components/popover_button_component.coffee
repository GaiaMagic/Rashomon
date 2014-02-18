Rashomon.PopoverButtonComponent = Ember.Component.extend
  popoverBtnClass: 'js-popover'

  didInsertElement: ->
    content = @get('content')
    _class = '.' + @get('popoverBtnClass')

    btn = $(@get('element')).find(_class)
    allBtn = $(_class)

    btn.popover
      html: true
      animation: false
      trigger: 'click'
      placement: 'top'
      content: content

    btn.on 'show.bs.popover', ->
      allBtn.popover('hide')
