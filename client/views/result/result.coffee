Template.result.helpers
  appType: () ->
    Session.get('type')
  login: () ->
    Session.get('login')
  profile: () ->
    Session.get('profile')
  payment: () ->
    Session.get('payment')
  rating: () ->
    Session.get('rating')
  integration: () ->
    Session.get('integration')
  design: () ->
    Session.get('design')
  appicon: () ->
    Session.get('appicon')
  total: () ->
    Session.get('total')