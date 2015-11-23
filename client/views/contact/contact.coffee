type = ->
  switch Session.get 'type'
    when 'ios' then 'Apple iOS'
    when 'android' then 'Android'
    else 'Apple iOS and Android'
login = ->
  switch Session.get 'login'
    when 'email' then 'Email'
    when 'social' then 'Social'
    when 'no' then 'No'
    else 'I don\' know'
profile = ->
  if Session.get 'profile' == true
    'Yes'
  else if Session.get 'profile' == false
    'No'
  else
    'I don\'t know'
payment = ->
  switch Session.get 'payment'
    when 'upfront' then 'Upfront Cost'
    when 'inapp' then 'In-app Purchases'
    when 'free' then 'Free'
    else 'I don\' know'
rating = ->
  if Session.get 'rating' == true
    'Yes'
  else if Session.get 'rating' == false
    'No'
  else
    'I don\'t know'
integration = ->
  if Session.get 'integration' == true
    'Yes'
  else if Session.get 'integration' == false
    'No'
  else
    'I don\'t know'
design = ->
  switch Session.get 'design'
    when 'barebone' then 'Bare-bones'
    when 'stock' then 'Stock'
    when 'beautiful' then 'Beautiful'
appicon = ->
  if Session.get 'appicon' == true
    'Yes'
  else if Session.get 'appicon' == false
    'No'
  else
    'I don\'t know'

Template.contact.rendered = ->
  $('.header .estimate').addClass('hide')
  $('.header .share').addClass('hide')

  $('form').validate
    rules:
      title:
        required: true
      budget:
        required: true
        number: true
        min: 0
      detail:
        required: true
      first_name:
        required: true
      last_name:
        required: false
      email:
        required: true
        email: true

Template.contact.helpers
  total: -> Session.get 'total'
  type: ->
    switch Session.get 'type'
      when 'ios' then 'Apple iOS'
      when 'android' then 'Android'
      when 'ios_android' then 'Apple iOS and Android'
      else 'disruptive mobile'

Template.contact.events
  'submit form': (e, tpl) ->
    e.preventDefault()

    contact =
      title: $(e.target).find('[name=title]').val()
      budget: $(e.target).find('[name=budget]').val()
      detail: $(e.target).find('[name=detail]').val()
      first_name: $(e.target).find('[name=first_name]').val()
      last_name: $(e.target).find('[name=last_name]').val()
      email: $(e.target).find('[name=email]').val()
      choice_id: Session.get 'resultId'
      total: Session.get 'total'

    contact._id = Contacts.insert(contact)

    content = "New Registration\n
      \n
      Title : #{contact.title}\n
      Budget: USD #{contact.budget}\n
      Detail:\n
      #{contact.detail}\n
      \n---\n\n
      First Name: #{contact.first_name}\n
      Last Name : #{contact.last_name}\n
      Email     : #{contact.email}\n
      \n---\n\n
      Choice:\n
      Type       : #{type()}\n
      Login      : #{login()}\n
      Profile    : #{profile()}\n
      Payment    : #{payment()}\n
      Rating     : #{rating()}\n
      Integration: #{integration()}\n
      Design     : #{design()}\n
      Appicon    : #{appicon()}\n
      Total      : USD #{Session.get('total')}
    "

    if contact._id
      Meteor.call 'sendEmail', 'mark@mindfund.com', 'CostToMakeAnApp Quote <contact@costtomakeanapp.com>', "[CostToMakeAnApp] New Registration: #{contact.first_name} #{contact.last_name}", content

    Router.go 'success'