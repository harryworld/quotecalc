Template.rating.events
  'click #yes': (e, tpl) ->
    e.preventDefault()
    Session.set 'rating', 'yes'
    Router.go 'integration'