navigate = () ->
  if Session.get 'resultId'
    Router.go 'result', {_id: Session.get('resultId')}
  else
    Router.go 'integration'

Template.rating.events
  'click .step-rating .yes': (e, tpl) ->
    Session.set 'rating', true
    navigate()
  'click .step-rating .no': (e, tpl) ->
    Session.set 'rating', false
    navigate()
  'click .step-rating .unknown': (e, tpl) ->
    Session.set 'rating', undefined
    navigate()
