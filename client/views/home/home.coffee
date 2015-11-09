Template.home.rendered = ->
  $('#fullpage').fullpage
    anchors: ['home', 'type', 'login', 'profile', 'payment', 'rating', 'integration', 'design', 'appicon']

Template.home.events
  'click .button': (e, tpl) ->
    e.preventDefault()
    $.fn.fullpage.moveTo('type')