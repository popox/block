class block.MyMap
  # The Map constructor returns the map
  init: (options) ->
    @me = []
	@map = $("<div id='map'></div>")
    @size = options.size if options.size
    @el = $(options.el) if options.el
    @build(2*@size-1) if @size

  build: (n) ->
    if n > 0
      a = []
      if n%2==@size%2
        lim = @size
      else
        lim = @size-1
      while lim>0
        a.push(new block.State())
        lim--
      @me.push(a)
      @build(n-1) if n > 1
    else
      console.warn("You're trying to build a #{n} size map.. Are you sure?")

  render: () ->
	for row in @me
		r = $ '<div/>'
		if i%2
			r.addClass 'odd'
		else
			r.addClass 'even'
		for space in row
			s = $ '<div/>'
			s.click ()->
				b.changeTurn(@data().set(b.turn%b.players+1))
			s.data(space)
			r.append s
		@map.append r
			
    