BackboneTestingExample::Application.routes.draw do
  root to: "backbone#index"

  resource 'armadillos'
end
