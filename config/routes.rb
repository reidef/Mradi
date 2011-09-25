Mradi::Application.routes.draw do
  match "sessions/create/:auth_token" => 'sessions#create'

  get "logout" => "sessions#destroy", :as => "logout"

  resources :projects

  root :to => 'sessions#new'
end
