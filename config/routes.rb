Rails.application.routes.draw do
  root "tops#index"
  resources :tops, only: [:index]
  resources :secondtops, only: [:index]
  resources :thirdtops, only: [:index]
  resources :searches, only: [:index, :show]
end
