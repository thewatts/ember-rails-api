App.UsersEditController = Ember.ObjectController.extend
  destroy: ->
    @content.deleteRecord()
    @store.commit()
    @transitionTo('users.index')

  save: ->
    @content.save().then =>
      @transitionToRoute('users.show', @content)

  cancel: ->
    if @content.get('isDirty')
      console.log('dirty')
      @content.rollback()
    else
      console.log('not dirty')
    @transitionToRoute('users.show', @content)

  buttonTitle: 'Edit'
  headerTitle: 'Editing'