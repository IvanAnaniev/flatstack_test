Rails.application.routes.draw do
  devise_for :users
  root to: 'home#index'

  resources :events, only: [:index, :new, :create, :edit, :update, :destroy]
end
