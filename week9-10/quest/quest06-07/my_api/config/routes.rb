Rails.application.routes.draw do
  get '/get', to: 'api#get'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get '/todos', to: 'todos#index'
  post '/todos', to: 'todos#create'
  put '/todos/:id', to: 'todos#update'
  delete '/todos/:id', to: 'todos#destroy'
end
