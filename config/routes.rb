Rails.application.routes.draw do
  resources :user_messages
  resources :messages
  resources :connections
  resources :bookings
  resources :skills
  resources :user_skills
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  post '/login', to: 'auth#login'
  post '/signup', to: 'users#create'
  get '/profile', to: 'users#profile'

end
