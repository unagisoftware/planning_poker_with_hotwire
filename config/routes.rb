Rails.application.routes.draw do
  resources :rooms, only: %i[show] do
    member do
      post :reset
      post :reveal
    end
  end

  resources :members, only: %i[new create]
  resources :estimations, only: %i[create]

  get 'up' => 'rails/health#show', as: :rails_health_check
  delete 'logout' => 'sessions#logout', as: :logout
end
