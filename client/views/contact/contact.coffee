Template.contact.helpers
  total: -> Session.get 'total'
  type: ->
    switch @type
      when 'ios' then 'Apple iOS'
      when 'android' then 'Android'
      else 'Apple iOS and Android'

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