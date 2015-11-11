Router.configure
  layoutTemplate: 'MasterLayout'
  loadingTemplate: 'LoadingLayout'
  notFoundTemplate: 'NotFoundLayout'

Router.route '/',
  name: 'home'
  layoutTemplate: 'HomeLayout'

Router.route '/type',
  name: 'type'

Router.route '/login',
  name: 'login'

Router.route '/profile',
  name: 'profile'

Router.route '/payment',
  name: 'payment'

Router.route '/rating',
  name: 'rating'

Router.route '/integration',
  name: 'integration'

Router.route '/design',
  name: 'design'

Router.route '/appicon',
  name: 'appicon'

Router.route '/calc',
  name: 'calc'

Router.route '/results/:_id',
  name: 'result'
  layoutTemplate: 'ResultLayout'
  data: ->
    Session.set 'resultId', @params._id
    Choices.findOne(@params._id)

Router.route '/contact',
  name: 'contact'
  layoutTemplate: 'ResultLayout'

Router.route '/success',
  name: 'success',
  layoutTemplate: 'ResultLayout'