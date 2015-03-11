Rails.application.routes.draw do
  resources :days

  resources :reports

  resources :workers

  root to: 'visitors#index'
  devise_for :users
  resources :users
end
