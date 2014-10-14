attr = DS.attr

RFC822_EMAIL_REGEX = /^[a-zA-Z0-9.!#$%&'*+\/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?)*$/
model = DS.Model.extend Ember.Validations.Mixin,
  email: attr('string')
  password: attr('string')
  passwordConfirmation: attr('string')
  validations:
    email:
      presence: true
      format: 
        with: RFC822_EMAIL_REGEX
    password:
      confirmation: true
      length:
        minimum: 6
  

`export default model;`