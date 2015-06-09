Router.configure
  layoutTemplate: 'app'
  loadingTemplate: 'loading'

Router.route '/', () ->
  @render 'home',
    data: ()-> 'hello from Home'

Router.route('/subscribe/:user', {where: 'server'})
  .get ()->
    Meteor.http
    @response.end @.params.user
  .post ()->
    @response.end 'hello post'