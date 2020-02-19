Rails.application.routes.draw do
  root "tops#index"
  resources :tops, only: [:index, :show]
  resources :searches, only: [:index, :show]
end
