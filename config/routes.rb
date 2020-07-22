Rails.application.routes.draw do
  devise_for :authors, :controllers => {registrations: 'registrations'}
  
  resources :authors
  root 'authors#index'
  
  resources :books
  root 'books#index'
  namespace :api do
    resources :authors, only: [:show]
  end
end