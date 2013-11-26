TrafficEstimatorApp::Application.routes.draw do
  root to: "home#index"
  get "/cities/:id", to: "cities#show"
end
