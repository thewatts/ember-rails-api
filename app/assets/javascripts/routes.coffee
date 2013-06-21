App.Router.reopen
  location: 'history'
  rootURL: '/'

App.Router.map ->
  @resource 'users', ->
    @route 'show',
      path: '/:user_id'
    @route 'new'
    @route 'edit',
      path: '/:user_id/edit'

App.IndexRoute = Ember.Route.extend
  setupController: (controller, model) ->
    @controllerFor('application').set('currentRoute', 'home')

App.UsersRoute = Ember.Route.extend
  model: ->
    App.User.find()
  setupController: (controller, model) ->
    @controllerFor('application').set('currentRoute', 'users')

App.UsersNewRoute = Ember.Route.extend
  model: ->
    App.User.createRecord() # see explaination 1. below
  setupController: (controller, model) ->
    controller.set('content', model)
###
  1. Don't be fooled by the createRecord() call. This will not write anything to the backend. This call is simply used to create a new model.
###

App.UsersEditRoute = Ember.Route.extend
  model: (params) ->
    App.User.find(params.user_id)
  setupController: (controller, model) ->
    controller.set('content', model)
    @controllerFor('application').set('currentRoute', 'users')

App.UsersShowRoute = Ember.Route.extend
  model: (params) ->
    App.User.find(params.user_id)
  setupController: (controller, model) ->
    controller.set('content', model)
    @controllerFor('application').set('currentRoute', 'users')