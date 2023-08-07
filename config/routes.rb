# config/routes.rb
Rails.application.routes.draw do
  resources :shares
  
  get './shares', to: 'shares#index'
  resources :playlists, only: [:create, :index, :show, :destroy]
  resources :shares, only: [:create]

  post '/users/:user_id/search', to: 'search_histories#search'
  get '/users/:user_id/recommendations', to: 'recommendations#recommend'
  post '/playlists/:playlist_id/musics/:music_id', to: 'playlists#add_music_to_playlist'
  get '/playlists/:playlist_id/musics/:music_id', to: 'playlists#add_music_to_playlist'
  get '/playlists/:playlist_id/musics/', to: 'playlists#fetch_added_songs'



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
  post '/shares', to: 'shares#create'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

end



