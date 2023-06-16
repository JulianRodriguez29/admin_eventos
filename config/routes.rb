Rails.application.routes.draw do
  resources :eventos, only: [:index] do
    resources :reservas, only: [:new, :create]
  end
  root 'eventos#index'
end