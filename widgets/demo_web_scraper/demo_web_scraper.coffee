class Dashing.DemoWebScraper extends Dashing.Widget

  ready: ->
    @tweak()
    # This is fired when the widget is done being rendered

  onData: (data) ->
    @tweak()
    # Handle incoming data
    # You can access the html node of this widget with `@node`
    # Example: $(@node).fadeOut().fadeIn() will make the node flash each time data comes in.

  tweak: ->
    $(@node).find('img').each (i,o) ->
      $(o).attr('src','http://trafikinfo.bane.dk/' + $(o).attr('src')) if !/http/.test($(o).attr('src'))
