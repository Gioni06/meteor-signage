if Meteor.isServer
  Meteor.startup ()->
    @Images = new Meteor.Collection 'Images'