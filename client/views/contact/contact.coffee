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

    Router.go 'success'