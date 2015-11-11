navigate = () ->
  if Session.get 'resultId'
    Choices.update(Session.get('resultId'), {$set: {profile: Session.get 'profile'}}, (error) ->
      console.log error.reason if error
    );
    Router.go 'result', {_id: Session.get('resultId')}
  else
    Router.go 'payment'

Template.profile.events
  'click .step-profile .yes': (e, tpl) ->
    Session.set 'profile', true
    navigate()
  'click .step-profile .no': (e, tpl) ->
    Session.set 'profile', false
    navigate()
  'click .step-profile .unknown': (e, tpl) ->
    Session.set 'profile', undefined
    navigate()
