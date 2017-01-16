Rails.application.routes.draw do
  # We don't need to add resources for welcome page since we only will need one of the resources
  get 'welcome/index'
    root 'welcome#index' #settig the action to the welcome controller
  resources :posts
end
