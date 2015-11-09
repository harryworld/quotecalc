Template.calc.rendered = ->
  console.log 'saved'

  choice =
    type: Session.get('type')
    login: Session.get('login')
    profile: Session.get('profile')
    payment: Session.get('payment')
    rating: Session.get('rating')
    integration: Session.get('integration')
    design: Session.get('design')
    appicon: Session.get('appicon')
    total: Session.get('total')

  choice._id = Choices.insert(choice)

  Router.go 'result', choice

Template.result.helpers
  type: () ->
    switch @type
      when 'ios' then 'Apple iOS'
      when 'android' then 'Android'
      else 'Apple iOS and Android'
  # login: () ->
  # profile: () ->
  # payment: () ->
  # rating: () ->
  # integration: () ->
  # design: () ->
  # appicon: () ->
