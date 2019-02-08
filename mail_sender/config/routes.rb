Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  post '/receiver', as: 'receiver#create'
  put '/receiver/:id', as: 'receiver#update'
  post '/home', as: 'home#index'
  root to: 'home#index'
end
