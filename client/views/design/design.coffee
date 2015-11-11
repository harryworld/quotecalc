navigate = () ->
  if Session.get 'resultId'
    Choices.update(Session.get('resultId'), {$set: {design: Session.get 'design'}}, (error) ->
      console.log error.reason if error
    );
    Router.go 'result', {_id: Session.get('resultId')}
  else
    Router.go 'appicon'

Template.design.rendered = ->
  if $('.master').length
    $('.progress .meter').animate({width: '87.5%'})

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
