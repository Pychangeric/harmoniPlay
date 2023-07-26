Rails.application.routes.draw do

  post '/users/:user_id/search', to: 'search_histories#search'
  get '/users/:user_id/recommendations', to: 'recommendations#recommend'
  resources :playlists, only: [:create, :index, :show, :destory]
  resources :users
  post 'signup', to: 'users#create'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get '/musics', to: 'music#index'

end

