Template.payment.events
  'click #upfront': (e, tpl) ->
    e.preventDefault()
    Session.set 'payment', 'upfront'
    Router.go 'rating'
  'click #inapp': (e, tpl) ->
    e.preventDefault()
    Session.set 'payment', 'inapp'
    Router.go 'rating'
  'click #free': (e, tpl) ->
    e.preventDefault()
    Session.set 'payment', 'free'
    Router.go 'rating'
