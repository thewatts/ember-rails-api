App.UsersNewController = Ember.ObjectController.extend
  headerTitle: 'Create'
  buttonTitle: 'Create'

  save: ->
    @content.save().then =>
      @transitionToRoute('users.show', @content)

  cancel: ->
    @content.deleteRecord()
    @transitionToRoute('users.index')