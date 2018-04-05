Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'pages#homepage'
  
  get '/items', to: 'items#index'
  get '/items/new', to: 'items#new'
  post '/items', to: 'items#create'
  
end
