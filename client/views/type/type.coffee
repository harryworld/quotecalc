navigate = () ->
  if Session.get 'resultId'
    Router.go 'result', {_id: Session.get('resultId')}
  else
    Router.go 'login'

Template.type.events
  'click .ios': (e, tpl) ->
    Session.set 'type', 'ios'
    navigate()
  'click .android': (e, tpl) ->
    Session.set 'type', 'android'
    navigate()
  'click .ios_android': (e, tpl) ->
    Session.set 'type', 'ios_android'
    navigate()
