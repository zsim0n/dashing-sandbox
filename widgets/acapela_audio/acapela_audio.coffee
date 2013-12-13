class Dashing.AcapelaAudio extends Dashing.Widget


  onData: (data) ->

    @play()


  play: ->

    apiUrl = "http://vaas.acapela-group.com/webservices/1-32-01-JSON/synthesizer.php?jsoncallback=?"
    apiData = { prot_vers: 2, cl_login: "EVAL_VAAS", cl_app: "EVAL_3321536", cl_pwd: "7n7ja3ff", cl_env: 'PHP_APACHE_2.2.3_LINUX_SUSE', req_voice: "mette22k", req_text: @title }

    $.getJSON apiUrl, apiData, (data) ->
      $(@node).find('audio').remove()
      audio = $("<audio></audio>").attr({src: data.snd_url,'autoplay': 'autoplay'})
      audio.appendTo $(@node);

