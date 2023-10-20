Rails.application.routes.draw do
  resources :games, only: %i[show]
  resources :member, only: %i[new create]

  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
