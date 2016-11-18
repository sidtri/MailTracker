Rails.application.routes.draw do


  resources :emails, only: [:index, :show]

  resources :mail_getters
  resources :mail_server_credentials
  resources :testrs
  resources :users
  resources :home
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'home#new'
end
