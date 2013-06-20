App.User = DS.Model.extend
  firstName: DS.attr 'string'
  lastName:  DS.attr 'string'
  quote:     DS.attr 'string'
  fullName: (->
    "#{@get('firstName')} #{@get('lastName')}"
  ).property('firstName', 'lastName')