class Dashing.DemoSpacer extends Dashing.Widget

  ready: ->
    # This is fired when the widget is done being rendered
    $(@node).css("background-color",$(@node).attr("data-bgcolor")) if $(@node).attr("data-bgcolor")?

  onData: (data) ->
    # Handle incoming data
    # You can access the html node of this widget with `@node`
    # Example: $(@node).fadeOut().fadeIn() will make the node flash each time data comes in.
    if @bgcolor == '#2C4267'
      $(@node).css("display",'none')
    else
      $(@node).css("background-color",@bgcolor)
      $(@node).css("display",'table-cell')
