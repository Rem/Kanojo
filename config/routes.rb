Rails.application.routes.draw do
  get 'session/welcome' AS '/welcome'

  root '/welcome'

  get 'session/user-login'
  get 'session/girlfriend-login'
  resources :reviews
  resources :reservations
  resources :locations
  resources :users
  resources :girlfriends
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
