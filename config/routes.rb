Rails.application.routes.draw do
  resources :pan_details

  get 'signup', to: 'users#new'
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  
  resources :users, except: [:new]
  get '/users/:id/articles' => "users#show_articles"
  
  resources :articles
  root "homes#index"
  get '/about' => "homes#about"
  get '/services' => "homes#services"
  post '/articles/new' => "articles#create"

  get '/products' => "products#index", as: :show_products
  get '/products/new' => "products#new", as: :new_product
  post '/products' => "products#create", as: :products
  get '/products/:id' => "products#show", as: :product
  get '/products/:id/edit' => "products#edit", as: :edit_product
  patch '/products/:id' => "products#update", as: :update_product
  delete '/products/:id' => "products#destroy"

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end