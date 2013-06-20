App.Router.reopen
  location: 'history'
  rootURL: '/'

App.Router.map ->
  @resource 'users', ->
    @route 'show',
      path: '/:user_id'

App.IndexRoute = Ember.Route.extend
  setupController: (controller, model) ->
    @controllerFor('application').set('currentRoute', 'home')

App.UsersRoute = Ember.Route.extend
  model: ->
    App.User.find()
  setupController: (controller, model) ->
    @controllerFor('application').set('currentRoute', 'users')

App.UsersShowRoute = Ember.Route.extend
  model: (params) ->
    App.User.find(params.user_id)
  setupController: (controller, model) ->
    controller.set('content', model)
    @controllerFor('application').set('currentRoute', 'users')