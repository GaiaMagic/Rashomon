Rashomon.Router.map ->
  @route 'index', path: '/'

  @resource 'products', ->
    @route 'musicianguide'
    @route 'hepaimusic'
    @route 'youyanchu'
    @route 'shenglijun'
    @route 'sell'
    @route 't-shirt'
    @route 'store'
