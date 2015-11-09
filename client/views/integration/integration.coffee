Template.integration.events
  'click #yes': (e, tpl) ->
    e.preventDefault()
    Session.set 'integration', true
    Router.go 'design'
  'click #no': (e, tpl) ->
    e.preventDefault()
    Session.set 'integration', false
    Router.go 'design'
  'click #unknown': (e, tpl) ->
    Session.set 'integration', undefined
