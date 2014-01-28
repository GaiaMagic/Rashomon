Rashomon.JobItemComponent = Ember.Component.extend
  tagName: 'a'
  classNameBindings: [':job-item', ':rounded', ':u-marginRm', ':u-marginBm', ':u-paddingVs', 'active']

  active: (->
    @get('job').slug == @get('currentSlug')
  ).property('currentSlug')

  click: ->
    @sendAction('action', @get('job').slug)
