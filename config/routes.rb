Rails.application.routes.draw do
  # delete '/products/:id', to: 'products#destroy'
  # patch '/products/:id', to: 'products#update'
  # post '/products', to: 'products#create'
  # get '/products', to: 'products#index'
  # get '/products/new', to: 'products#new', as: :new_product
  # get '/products/:id', to: 'products#show', as: :product
  # get '/products/:id/edit', to: 'products#edit', as: :edit_product

  namespace :authentication, path: "", as: "" do
    resources :users, only: [:new, :create], path: "/register", path_names: {new: "/"}
    resources :sessions, only: [:new, :create, :destroy], path: "/login", path_names: {new: "/"}
  end

  resources :favorites, only: [:index, :create, :destroy], param: :product_id
  resources :users, only: :show, path: "/user", param: :username
  resources :categories, except: :show
  resources :products, path: "/"
end
