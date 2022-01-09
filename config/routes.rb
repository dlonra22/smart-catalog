Rails.application.routes.draw do
 root 'static#home'
 resources :static, only: [:home]
 resources :users, only: [:show]
 #omni auth
 get '/auth/github/callback', to: 'sessions#create'
 get '/auth/google_oauth2/callback', to: 'sessions#create'  
end
