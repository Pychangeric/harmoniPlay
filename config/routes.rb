# config/routes.rb
Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      # User Management
      post 'register', to: 'users#register'
      post 'login', to: 'users#login'
      # Database Integration - Users
      resources :users, only: [:show, :update, :destroy]
      # Music Library Management - Songs, Artists, Albums
      resources :songs, only: [:index, :show, :create, :update, :destroy]
      resources :artists, only: [:index, :show, :create, :update, :destroy]
      resources :albums, only: [:index, :show, :create, :update, :destroy]
      # Search and Recommendation Endpoint
      get 'search', to: 'music#search'
      get 'recommendations', to: 'music#recommendations'
      # Audio Playback - Assuming streaming is handled outside the API
      get 'songs/:id/play', to: 'songs#play'
      # Playlist Management
      resources :playlists, only: [:index, :show, :create, :update, :destroy]
      post 'playlists/:id/add_song', to: 'playlists#add_song'
      delete 'playlists/:id/remove_song/:song_id', to: 'playlists#remove_song'
      # Social Media Sharing Integration
      post 'songs/:id/share_on_twitter', to: 'social_media#share_on_twitter'
      post 'songs/:id/share_on_facebook', to: 'social_media#share_on_facebook'
      post 'songs/:id/share_on_whatsapp', to: 'social_media#share_on_whatsapp'
      post 'songs/:id/share_on_instagram', to: 'social_media#share_on_instagram'
      post 'songs/:id/share_on_telegram', to: 'social_media#share_on_telegram'
      # Authentication Middleware - Placeholder for authentication middleware
      # You can implement your custom authentication middleware or use gems like Devise or JWT.
      # The middleware should be added in the controller or applied as a before_action.
    end
  end
end











