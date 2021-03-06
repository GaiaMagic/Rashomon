Rashomon.JobsController = Ember.ArrayController.extend
  currentSlug: 'backend'

  currentContent: (->
    @get('model').
      findBy('slug', @get('currentSlug')).
      content_html.
      htmlSafe()
  ).property('currentSlug')

  actions:
    setCurrentSlug: (slug) ->
      @set('currentSlug', slug)
