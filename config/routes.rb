Rails.application.routes.draw do
  root to: 'secrets#index'
  get '/show', to: 'secrets#show'
  get '/new', to: 'sessions#new'
  post '/new', to: 'sessions#create'
  post 'logout', to: 'sessions#destroy'
end
