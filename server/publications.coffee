Meteor.publish 'choices', (params) ->
  Choices.find(params)

Meteor.publish 'contacts', ->
  Contacts.find()