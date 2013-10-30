BackboneTestingExample.Armadillos.IndexView = Backbone.View.extend({


  initialize: function(options) {
    _.bindAll(this,
              'myTemplate',
              'render');

    this.collection = new BackboneTestingExample.Armadillos;
    this.collection.fetch();

    this.dom = $(this.el);
    this.setupTemplate();
  },

  // functions

  myTemplate: function(){
    return Handlebars.compile(decodeURI($("#my_template").html()));
  },

  render: function() {
    $(this.el).append(this.myTemplate());
  },

  setupTemplate: function() {
    this.dom.append(
      $(this.myTemplate()({models: this.collection.mos}))
    );
  }

});
