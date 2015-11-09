Template.type.events
  'click #ios': (e, tpl) ->
    e.preventDefault()
    Session.set 'type', 'ios'
    Router.go 'login'
  'click #android': (e, tpl) ->
    e.preventDefault()
    Session.set 'type', 'android'
    Router.go 'login'
  'click #ios_android': (e, tpl) ->
    e.preventDefault()
    Session.set 'type', 'ios_android'
    Router.go 'login'
