Rails.application.routes.draw do
  post '/users/:user_id/search', to: 'search_histories#search'
  get '/users/:user_id/recommendations', to: 'recommendations#recommend'
end