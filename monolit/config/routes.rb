Rails.application.routes.draw do
  post '/receiver', to: 'receiver#create'
  put '/receiver/:id', to: 'receiver#update'
  post '/home', to: 'home#index'
  root to: 'home#index'
end
