Template.appicon.events
  'click .step-appicon .yes': (e, tpl) ->
    Session.set 'appicon', true
    Router.go 'calc'
  'click .step-appicon .no': (e, tpl) ->
    Session.set 'appicon', false
    Router.go 'calc'
  'click .step-appicon .unknown': (e, tpl) ->
    Session.set 'appicon', undefined
    Router.go 'calc'
