Template.header.helpers
  total: () ->
    total = 0

    number_of_apps = 1
    number_of_pages = 0

    switch Session.get('type')
      when 'ios' then total += 8000
      when 'android' then total += 10000
      when 'ios_android'
        total += 9000
        number_of_apps = 2

    switch Session.get('login')
      when 'email'
        total += 2000
        number_of_pages += 3
      when 'social'
        total += 4000
        number_of_pages += 2

    if Session.get('profile') == true
      total += 3000
      number_of_pages += 2

    switch Session.get('payment')
      when 'upfront' then total += 1000
      when 'inapp'
        total += 3000
        number_of_pages += 2

    if Session.get('rating') == true
      total += 3000
      number_of_pages += 2

    total += 5000 if Session.get('integration')

    switch Session.get('design')
      when 'barebone'
        total += 500 * number_of_pages
      when 'stock'
        total += 5000
        total += 500 * number_of_pages
      when 'beautiful'
        total += 10000
        total += 500 * number_of_pages

    if Session.get('appicon') == true
      switch Session.get('design')
        when 'barebone' then total += 500
        when 'stock' then total += 1500
        when 'beautiful' then total += 4000

    if number_of_apps == 2
      total *= 2
    else
      total

    Session.set 'total', total

    total

Template.header.events
  'click #start-over': (e, tpl) ->
    Session.set
      type: undefined
      login: undefined
      profile: undefined
      payment: undefined
      rating: undefined
      integration: undefined
      design: undefined
      appicon: undefined
      total: 0
      resultId: undefined