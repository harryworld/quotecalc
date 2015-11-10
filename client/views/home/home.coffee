Template.home.rendered = ->
  $('#fullpage').fullpage
    anchors: ['home', 'type', 'login', 'profile', 'payment', 'rating', 'integration', 'design', 'appicon']

Template.home.events
  'click .get-start': (e, tpl) ->
    e.preventDefault()
    $.fn.fullpage.moveTo('type')

  'click .ios': (e, tpl) ->
    Session.set 'type', 'ios'
    $.fn.fullpage.moveTo('login')
  'click .android': (e, tpl) ->
    Session.set 'type', 'android'
    $.fn.fullpage.moveTo('login')
  'click .ios_android': (e, tpl) ->
    Session.set 'type', 'ios_android'
    $.fn.fullpage.moveTo('login')

  'click .step-login .email': (e, tpl) ->
    Session.set 'login', 'email'
    $.fn.fullpage.moveTo('profile')
  'click .step-login .social': (e, tpl) ->
    Session.set 'login', 'social'
    $.fn.fullpage.moveTo('profile')
  'click .step-login .no': (e, tpl) ->
    Session.set 'login', 'no'
    $.fn.fullpage.moveTo('profile')
  'click .step-login .unknown': (e, tpl) ->
    Session.set 'login', undefined
    $.fn.fullpage.moveTo('profile')

  'click .step-profile .yes': (e, tpl) ->
    Session.set 'profile', true
    $.fn.fullpage.moveTo('payment')
  'click .step-profile .no': (e, tpl) ->
    Session.set 'profile', false
    $.fn.fullpage.moveTo('payment')
  'click .step-profile .unknown': (e, tpl) ->
    Session.set 'profile', undefined
    $.fn.fullpage.moveTo('payment')

  'click .step-payment .upfront': (e, tpl) ->
    Session.set 'payment', 'upfront'
    $.fn.fullpage.moveTo('rating')
  'click .step-payment .inapp': (e, tpl) ->
    Session.set 'payment', 'inapp'
    $.fn.fullpage.moveTo('rating')
  'click .step-payment .free': (e, tpl) ->
    Session.set 'payment', 'free'
    $.fn.fullpage.moveTo('rating')
  'click .step-payment .unknown': (e, tpl) ->
    Session.set 'payment', undefined
    $.fn.fullpage.moveTo('rating')

  'click .step-rating .yes': (e, tpl) ->
    Session.set 'rating', true
    $.fn.fullpage.moveTo('integration')
  'click .step-rating .no': (e, tpl) ->
    Session.set 'rating', false
    $.fn.fullpage.moveTo('integration')
  'click .step-rating .unknown': (e, tpl) ->
    Session.set 'rating', undefined
    $.fn.fullpage.moveTo('integration')

  'click .step-integration .yes': (e, tpl) ->
    Session.set 'integration', true
    $.fn.fullpage.moveTo('design')
  'click .step-integration .no': (e, tpl) ->
    Session.set 'integration', false
    $.fn.fullpage.moveTo('design')
  'click .step-integration .unknown': (e, tpl) ->
    Session.set 'integration', undefined
    $.fn.fullpage.moveTo('design')

  'click .step-design .barebone': (e, tpl) ->
    Session.set 'design', 'barebone'
    $.fn.fullpage.moveTo('appicon')
  'click .step-design .stock': (e, tpl) ->
    Session.set 'design', 'stock'
    $.fn.fullpage.moveTo('appicon')
  'click .step-design .beautiful': (e, tpl) ->
    Session.set 'design', 'beautiful'
    $.fn.fullpage.moveTo('appicon')

  'click .step-appicon .yes': (e, tpl) ->
    Session.set 'appicon', true
    Router.go 'calc'
  'click .step-appicon .no': (e, tpl) ->
    Session.set 'appicon', false
    Router.go 'calc'
  'click .step-appicon .unknown': (e, tpl) ->
    Session.set 'appicon', undefined
    Router.go 'calc'

