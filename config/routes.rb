Rails.application.routes.draw do
  get '/' => 'session#welcome'

  get '/login' => 'session#new'
  post '/login' => 'session#create'

  get '/signup/user' => 'users#new'
  post '/signup/user' => 'users#create'

  get '/signup/girlfriend' => 'girlfriends#new'
  post '/signup/girlfriend' => 'girlfriends#create'

  delete '/logout' => 'session#destroy'

  resources :reviews
  resources :reservations
  resources :locations
  resources :users
  resources :girlfriends
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
