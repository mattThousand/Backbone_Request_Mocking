var BackboneTestingExampleRouter = Backbone.Router.extend({
  routes: {
    "": "getArmadillos",
  }
}); 

var backboneTestingExample = new BackboneTestingExampleRouter;

backboneTestingExample.on('route:getArmadillos', function() {
  console.log("evented!!!");
});


Backbone.history.start();
