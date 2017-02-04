Rails.application.routes.draw do
  devise_for :users
  # We don't need to add resources for welcome page since we only will need one of the resources
  resources :posts
  resources :projects
  resources :contacts, only: [:new, :create]
  get 'welcome/index'
    root 'welcome#index' #settig the action to the welcome controller
  # This below will redirect the user to the home page if the route is wrong.
  get '*path' => redirect('/')
end
