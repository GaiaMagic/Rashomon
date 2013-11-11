Rashomon.BannerBoutiqueComponent = Ember.Component.extend
  tagName: false

  didInsertElement: ->
    globalWidth = 960 # XXX Hardcode width-global

    $('#boutique').boutique
      container_width   : globalWidth - 30
      autoplay          : true
      autoplay_interval : 300000
      frames            : 5
      starter           : 1
      speed             : 500
      hovergrowth       : 0
      keyboard          : true

      front_img_width   : 700
      front_img_height  : "auto"
      front_topmargin   : 0

      behind_opacity    : 0.65
      behind_topmargin  : 30
      behind_size       : 0.8
      behind_distance   : 45

      back_topmargin    : 65
      back_size         : 0.6
      back_opacity      : 0.15

      text_front_only   : false
      text_opacity      : 1
