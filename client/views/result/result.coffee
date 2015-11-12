Template.calc.rendered = ->
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

Template.result.rendered = ->
  $('.header .estimate').addClass('hide')
  $('.header .share').removeClass('hide')

  Session.set
    type: @.data.type
    login: @.data.login
    profile: @.data.profile
    payment: @.data.payment
    rating: @.data.rating
    integration: @.data.integration
    design: @.data.design
    appicon: @.data.appicon
    total: @.data.total

Template.result.helpers
  type: ->
    switch @type
      when 'ios' then 'Apple iOS'
      when 'android' then 'Android'
      else 'Apple iOS and Android'
  typeImage: ->
    switch @type
      when 'ios' then 'iOS'
      when 'android' then 'Android'
      else 'AndroidAndiOS'
  login: ->
    switch @login
      when 'email' then 'Email'
      when 'social' then 'Social'
      when 'no' then 'No'
      else 'I don\' know'
  loginImage: ->
    switch @login
      when 'email' then 'Email'
      when 'social' then 'Social'
      when 'no' then 'None'
      else 'DontKnow'
  profile: ->
    if @profile == true
      'Yes'
    else if @profile == false
      'No'
    else
      'I don\'t know'
  profileImage: ->
    if @profile == true
      'Profile'
    else if @profile == false
      'None'
    else
      'DontKnow'
  payment: ->
    switch @payment
      when 'upfront' then 'Upfront Cost'
      when 'inapp' then 'In-app Purchases'
      when 'free' then 'Free'
      else 'I don\' know'
  paymentImage: ->
    switch @payment
      when 'upfront' then 'UpfrontCost'
      when 'inapp' then 'InappPurchase'
      when 'free' then 'None'
      else 'DontKnow'
  rating: ->
    if @rating == true
      'Yes'
    else if @rating == false
      'No'
    else
      'I don\'t know'
  ratingImage: ->
    if @rating == true
      'Rate'
    else if @rating == false
      'None'
    else
      'DontKnow'
  integration: ->
    if @integration == true
      'Yes'
    else if @integration == false
      'No'
    else
      'I don\'t know'
  integrationImage: ->
    if @integration == true
      'ConnectWebsite'
    else if @integration == false
      'None'
    else
      'DontKnow'
  design: ->
    switch @design
      when 'barebone' then 'Bare-bones'
      when 'stock' then 'Stock'
      when 'beautiful' then 'Beautiful'
  designImage: ->
    switch @design
      when 'barebone' then 'BareBones'
      when 'stock' then 'Stock'
      when 'beautiful' then 'Beautiful'
  appicon: ->
    if @appicon == true
      'Yes'
    else if @appicon == false
      'No'
    else
      'I don\'t know'
  appiconImage: ->
    if @appicon == true
      'AppIcon'
    else if @appicon == false
      'None'
    else
      'DontKnow'

Template.result.events
  'click #breakdown': (e, tpl) ->
    $('.breakdown').slideToggle 'slow', ->
      console.log 'done'