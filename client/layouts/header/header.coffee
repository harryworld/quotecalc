Template.header.helpers
  total: () ->
    total = 0

    number_of_apps = 1
    number_of_pages = 0

    switch Session.get('type')
      when 'ios' then total += 8000
      when 'android' then total += 8000
      when 'ios_android'
        total += 8000
        number_of_apps = 2

    switch Session.get('login')
      when 'email'
        total += 2000
        number_of_pages += 3
      when 'social'
        total += 4000
        number_of_pages += 1

    if Session.get('profile')
      total += 3000
      number_of_pages += 1

    switch Session.get('payment')
      when 'upfront' then total += 1000
      when 'inapp'
        total += 3000
        number_of_pages += 1

    if Session.get('rating') == 'yes'
      total += 3000
      number_of_pages += 2

    total += 5000 if Session.get('integration')

    switch Session.get('design')
      when 'barebone'
        total += 1500
        total += 200 * number_of_pages
      when 'stock'
        total += 4000
        total += 1000 * number_of_pages
      when 'beautiful'
        total += 8000
        total += 2000 * number_of_pages

    total += 2000 if Session.get('appicon')

    if number_of_apps == 2
      total *= 2
    else
      total