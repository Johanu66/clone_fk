Rails.application.routes.draw do
  resources :posts
  post '/posts/new', to: 'posts#confirm', as: 'confirm_post'
  post '/users/new', to: 'users#create'
  resources :users
  get '/sessions/new', to: 'sessions#new', as: 'new_session'
  post '/sessions/new' , to: 'sessions#create', as: 'create_session'
  get '/sessions/destroy' , to: 'sessions#destroy', as: 'destroy_session'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
