Template.appicon.events
  'click .step-appicon .yes': (e, tpl) ->
    Session.set 'appicon', true
  'click .step-appicon .no': (e, tpl) ->
    Session.set 'appicon', false
  'click .step-appicon .unknown': (e, tpl) ->
    Session.set 'appicon', undefined
