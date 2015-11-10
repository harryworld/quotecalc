navigate = () ->
  if Session.get 'resultId'
    Router.go 'result', {_id: Session.get('resultId')}
  else
    Router.go 'appicon'

Template.design.events
  'click .step-design .barebone': (e, tpl) ->
    Session.set 'design', 'barebone'
    navigate()
  'click .step-design .stock': (e, tpl) ->
    Session.set 'design', 'stock'
    navigate()
  'click .step-design .beautiful': (e, tpl) ->
    Session.set 'design', 'beautiful'
    navigate()
