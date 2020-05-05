Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    resource :users, only: [:new, :create]

  get '/login', to: 'sessions#new'
  post '/sessions', to: 'sessions#create'
  get '/homepage', to: 'users#homepage'
  post '/logout', to: 'sessions#destroy'
end
