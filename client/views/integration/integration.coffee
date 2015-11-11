navigate = () ->
  if Session.get 'resultId'
    Choices.update(Session.get('resultId'), {$set: {integration: Session.get 'integration'}}, (error) ->
      console.log error.reason if error
    );
    Router.go 'result', {_id: Session.get('resultId')}
  else
    Router.go 'design'

Template.integration.rendered = ->
  if $('.master').length
    $('.progress .meter').animate({width: '75%'})

Template.integration.events
  'click .step-integration .yes': (e, tpl) ->
    Session.set 'integration', true
    navigate()
  'click .step-integration .no': (e, tpl) ->
    Session.set 'integration', false
    navigate()
  'click .step-integration .unknown': (e, tpl) ->
    Session.set 'integration', undefined
    navigate()
