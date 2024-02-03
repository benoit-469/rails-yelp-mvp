Rails.application.routes.draw do
  resources :restaurants, only: [:index, :new, :create]
  resources :reviews, only: %i[create]
end
