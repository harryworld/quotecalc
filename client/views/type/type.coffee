navigate = () ->
  if Session.get 'resultId'
    Choices.update(Session.get('resultId'), {$set: {type: Session.get 'type'}}, (error) ->
      console.log error.reason if error
    );
    Router.go 'result', {_id: Session.get('resultId')}
  else
    Router.go 'login'

Template.type.rendered = ->
  if $('.master').length
    $('.progress .meter').animate({width: '12.5%'})

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
