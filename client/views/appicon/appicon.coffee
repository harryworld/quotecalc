navigate = () ->
  if Session.get 'resultId'
    Choices.update(Session.get('resultId'), {$set: {appicon: Session.get 'appicon'}}, (error) ->
      console.log error.reason if error
    );
    Router.go 'result', {_id: Session.get('resultId')}
  else
    Router.go 'calc'

Template.appicon.rendered = ->
  if $('.master').length
    $('.progress .meter').animate({width: '100%'})

Template.appicon.events
  'click .step-appicon .yes': (e, tpl) ->
    Session.set 'appicon', true
    navigate()
  'click .step-appicon .no': (e, tpl) ->
    Session.set 'appicon', false
    navigate()
  'click .step-appicon .unknown': (e, tpl) ->
    Session.set 'appicon', undefined
    navigate()
