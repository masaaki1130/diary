Rails.application.routes.draw do
  devise_for :users
  root "messages#index"
  resources :users, only: [:edit, :update, :show]
  resources :messages, only: [:index, :create, :show]
end
