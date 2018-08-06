Rails.application.routes.draw do
  root 'static_pages#home'

  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'

  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  # get 'static_pages/home'

  get  '/signup',  to: 'users#new'
  post '/signup',  to: 'users#create'
  
  get '/clubpage', to: 'users#index', as:'secret'
  resources :users
end
