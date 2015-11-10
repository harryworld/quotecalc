navigate = () ->
  if Session.get 'resultId'
    Router.go 'result', {_id: Session.get('resultId')}
  else
    Router.go 'profile'

Template.login.events
  'click .step-login .email': (e, tpl) ->
    e.preventDefault()
    Session.set 'login', 'email'
    navigate()
  'click .step-login .social': (e, tpl) ->
    e.preventDefault()
    Session.set 'login', 'social'
    navigate()
  'click .step-login .no': (e, tpl) ->
    e.preventDefault()
    Session.set 'login', 'no'
    navigate()
  'click .step-login .unknown': (e, tpl) ->
    e.preventDefault()
    Session.set 'login', undefined
    navigate()
