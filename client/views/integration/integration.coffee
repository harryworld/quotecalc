navigate = () ->
  if Session.get 'resultId'
    Router.go 'result', {_id: Session.get('resultId')}
  else
    Router.go 'design'

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
