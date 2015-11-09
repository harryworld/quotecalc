navigate = () ->
  if Session.get 'appicon'
    Router.go 'result'
  else
    Router.go 'login'

Template.type.events
  'click #ios': (e, tpl) ->
    e.preventDefault()
    Session.set 'type', 'ios'
    navigate()
  'click #android': (e, tpl) ->
    e.preventDefault()
    Session.set 'type', 'android'
    navigate()
  'click #ios_android': (e, tpl) ->
    e.preventDefault()
    Session.set 'type', 'ios_android'
    navigate()
