class Dashing.Text extends Dashing.Widget

  ready: ->

    $(@node).css("background-color",$(@node).attr("data-bgcolor")) if $(@node).attr("data-bgcolor")?

  onData: (data) ->
    if @bgcolor == '#2C4267'
      $(@node).css("display",'none')
    else
      $(@node).css("background-color",@bgcolor)
      $(@node).css("display",'table-cell')

# Handle incoming data
    # You can access the html node of this widget with `@node`
    # Example: $(@node).fadeOut().fadeIn() will make the node flash each time data comes in.
