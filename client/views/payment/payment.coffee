navigate = () ->
  if Session.get 'resultId'
    Router.go 'result', {_id: Session.get('resultId')}
  else
    Router.go 'rating'

Template.payment.events
  'click .step-payment .upfront': (e, tpl) ->
    Session.set 'payment', 'upfront'
    navigate()
  'click .step-payment .inapp': (e, tpl) ->
    Session.set 'payment', 'inapp'
    navigate()
  'click .step-payment .free': (e, tpl) ->
    Session.set 'payment', 'free'
    navigate()
  'click .step-payment .unknown': (e, tpl) ->
    Session.set 'payment', undefined
    navigate()
