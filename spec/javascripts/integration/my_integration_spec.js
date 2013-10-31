//= require spec_helper

describe("Server interaction suite", function(){

  it("makes a request to the server", function(){
    
    var server = sinon.fakeServer.create();

    server.respondWith("GET", "/armadillos",
      [200, { "Content-Type":"application/json" },
        '{ "name":"Chaz", "codename":"honey-badger" }' ]
    );

    // server requests here

    var myCollection = new BackboneTestingExample.Armadillos;

    myCollection.fetch();

    server.respond();

    var correctName = myCollection.models[0].get('name');
    expect(correctName == "Chaz").toBeTruthy();

    var correctCodename = myCollection.models[0].get('codename');
    expect(correctCodename == "honey-badger").toBeTruthy;

    server.restore();
  });
});

