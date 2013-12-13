class Dashing.Text extends Dashing.Widget

  ready: ->
    $(@node).css("background-color",$(@node).attr("data-bgcolor"))


  onData: (data) ->
    # Handle incoming data
    # You can access the html node of this widget with `@node`
    # Example: $(@node).fadeOut().fadeIn() will make the node flash each time data comes in.
