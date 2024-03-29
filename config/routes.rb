Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'accounts#new'
  get '/logout', to: 'sessions#logout', as: 'logout'
  resources :accounts

  resources :sessions, only: [:new, :create]
end
