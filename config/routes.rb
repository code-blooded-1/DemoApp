Rails.application.routes.draw do
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
  delete '/products/:id' => "products#destroy", as: :delete_product

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end