Template.login.events
  'click #email': (e, tpl) ->
    e.preventDefault()
    Session.set 'login', 'email'
    Router.go 'profile'
  'click #social': (e, tpl) ->
    e.preventDefault()
    Session.set 'login', 'social'
    Router.go 'profile'
  'click #no': (e, tpl) ->
    e.preventDefault()
    Session.set 'login', 'no'
    Router.go 'profile'
