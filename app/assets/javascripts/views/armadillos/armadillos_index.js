BackboneTestingExample.Armadillos.IndexView = Backbone.view.extend({

  events: {
    'click #myId': 'myFunc'
  },

  initialize: function(options) {
    _.bindAll(this,
              'myFunc');

    this.collection = new BackboneTestingExample;
    this.collection.fetch();
  },

  // templates

  Handlebars.compile(decodeURI("#myOtherId"));

  // functions
    
  myFunc: function(e) {
          // stuff
  }
}):
