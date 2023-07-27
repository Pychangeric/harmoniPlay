# config/routes.rb
Rails.application.routes.draw do
  resources :shares
  
  get './shares', to 'shares#index'
     
end











