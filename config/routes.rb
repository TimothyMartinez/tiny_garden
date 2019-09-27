Rails.application.routes.draw do
  root 'static_pages#landing'
  get '/oauth/callback', to: 'instagram#callback'
  get 'users/show'
  get '/design', to: 'static_pages#design', as: 'design'
  get '/care', to: 'static_pages#care', as: 'care'
  get '/care/:doctor', to: 'static_pages#care', as: 'care_doctor'
  get '/cart', to: 'static_pages#cart', as: 'cart'
  get '/admin', to: 'static_pages#admin', as: 'admin'
  get '/sellables/new', to: 'products#sellables', as: 'new_sellable'
  devise_for :user

  resources :users, only: [:show]
  resources :products
  resources :plants
  resources :accessories
  resources :carts do 
    resources :cart_products
  end

  get '/admin/products', to: 'products#admin_products', as: 'admin_products'

  get 'hello_world', to: 'hello_world#index'
end
