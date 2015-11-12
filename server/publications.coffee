Meteor.publish 'choices', (params) ->
  Choices.find(params)
