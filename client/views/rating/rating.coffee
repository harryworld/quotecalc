navigate = () ->
  if Session.get 'resultId'
    Choices.update(Session.get('resultId'), {$set: {rating: Session.get 'rating'}}, (error) ->
      console.log error.reason if error
    );
    Router.go 'result', {_id: Session.get('resultId')}
  else
    Router.go 'integration'

Template.rating.rendered = ->
  if $('.master').length
    $('.progress .meter').animate({width: '62.5%'})

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
