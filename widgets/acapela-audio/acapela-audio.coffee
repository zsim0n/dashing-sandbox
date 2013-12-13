class Dashing.Text extends Dashing.Widget

  ready: ->
    $(@node).css("background-color",$(@node).attr("data-bgcolor"))


  onData: (data) ->

    apiUrl = "http://vaas.acapela-group.com/webservices/1-32-01-JSON/synthesizer.php?jsoncallback=?";

    apiData = { prot_vers: 2, cl_login: "EVAL_VAAS", cl_app: "EVAL_3321536", cl_pwd: "7n7ja3ff", cl_env: 'PHP_APACHE_2.2.3_LINUX_SUSE', req_voice: "mette22k", req_text: data }

    $.getJSON apiUrl, apiData, (data) ->
        audio = $("<audio></audio>").attr {src: data.snd_url,'autoplay': 'autoplay'}
        audio.appendTo($(@node))

    # Handle incoming data
    # You can access the html node of this widget with `@node`
    # Example: $(@node).fadeOut().fadeIn() will make the node flash each time data comes in.
