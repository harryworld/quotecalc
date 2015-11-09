Template.profile.events
  'click #yes': (e, tpl) ->
    Session.set 'profile', true
  'click #no': (e, tpl) ->
    Session.set 'profile', false
  'click #unknown': (e, tpl) ->
    Session.set 'profile', undefined
