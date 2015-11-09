navigate = () ->
  if Session.get 'appicon'
    Router.go 'result'
  else
    Router.go 'profile'

Template.login.events
  'click #email': (e, tpl) ->
    e.preventDefault()
    Session.set 'login', 'email'
    navigate()
  'click #social': (e, tpl) ->
    e.preventDefault()
    Session.set 'login', 'social'
    navigate()
  'click #no': (e, tpl) ->
    e.preventDefault()
    Session.set 'login', 'no'
    navigate()
