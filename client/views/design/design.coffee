Template.design.events
  'click #barebone': (e, tpl) ->
    Session.set 'design', 'barebone'
  'click #stock': (e, tpl) ->
    Session.set 'design', 'stock'
  'click #beautiful': (e, tpl) ->
    Session.set 'design', 'beautiful'
