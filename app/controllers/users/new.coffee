`import Ember from 'ember';`

controller = Ember.ObjectController.extend
  actions:    
    save: (user) ->
      console.log "trying to save"
      user.validate().then ->
        console.log "saved user"
        
      
`export default controller;`