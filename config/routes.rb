BackboneTestingExample::Application.routes.draw do
  root to: "backbone#index"

  resource 'armadillos'

  mount JasmineRails::Engine => "/spec/javascripts" if defined?(JasmineRails)
end
