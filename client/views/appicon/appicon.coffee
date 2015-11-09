Template.appicon.events
  'click #yes': (e, tpl) ->
    Session.set 'appicon', true
  'click #no': (e, tpl) ->
    Session.set 'appicon', false
  'click #unknown': (e, tpl) ->
    Session.set 'appicon', undefined
