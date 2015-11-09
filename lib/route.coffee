Router.configure
  layoutTemplate: 'MasterLayout'
  loadingTemplate: 'LoadingLayout'
  notFoundTemplate: 'NotFoundLayout'

Router.route '/',
  name: 'home'

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

Router.route '/result',
  name: 'result'

Router.route '/breakdown',
  name: 'breakdown'

