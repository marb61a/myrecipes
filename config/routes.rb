Rails.application.routes.draw do
  
  root 'pages#home'
  
  get '/home', to: 'pages#home'
  


  resources :recipes do
    member do
      post 'like'
    end
    resources :comments, only: [:create, :edit, :update, :destroy]
  end
  
  resources :chefs, except: [:new, :destroy]do
  end
     get '/register', to: 'chefs#new'
     get '/login', to: 'logins#new'
     post 'login', to: 'logins#create'
     get '/logout', to: 'logins#destroy'
     
  resources :syles, only: [:new, :create, :show]   
  resources :ingredients, only: [:new, :create, :show]


end

