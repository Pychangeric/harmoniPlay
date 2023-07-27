Rails.application.routes.draw do
  resources :playlists, only: [:create, :index, :show, :destroy]

  post '/users/:user_id/search', to: 'search_histories#search'
  get '/users/:user_id/recommendations', to: 'recommendations#recommend'
  resources :users
  resources :music, only: [:index, :show, :create]
  resources :artists
  post 'signup', to: 'users#create'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  get '/musics', to: 'music#index'
  post '/musics', to: 'music#create'
  get '/artist', to: 'artist#index'
  post '/artist', to: 'artist#create'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

<<<<<<< HEAD
<<<<<<< HEAD
  get '/musics', to: 'music#index'
end


end

>>>>>>> c85fe9fbda8a725b7cba187dc58a99ab84920b23
=======


end

>>>>>>> 9c210b4d131143583401ca1f8ca0ff018638bb82
