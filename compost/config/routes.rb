Rails.application.routes.draw do

  get 'sessions/new'

  get 'users/new'

  get 'piles/stats'

  root 'static_pages#home'
  get  '/help',    to: 'static_pages#help'
  get  '/add',     to: 'piles#add'
  get  '/about',   to: 'static_pages#about'
  get  '/contact', to: 'static_pages#contact'
  get  '/signup',  to: 'users#new'
  post '/signup',  to: 'users#create'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  resources :piles        
  resources :users
  resources :temp_logs
end
