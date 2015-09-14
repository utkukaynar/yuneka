Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
  devise_for :admins
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  get '/vendors', to: 'vendors#index'
  get '/vendors/:id', to: 'vendors#show', as: 'vendor'
  get '/vendors/:vendor_id/categories', to: 'categories#index', as: 'categories'
  get '/vendors/:vendor_id/categories/:id', to: 'categories#show', as: 'category'
  # get '/vendors/:vendor_id/categories/:category_id/products', to: 'products#index', as: 'products'
  get '/vendors/:vendor_id/categories/:category_id/products/:id', to: 'products#show', as: 'product'
  root "welcome#index"
  get '/posts/:id', to: 'posts#show', as: 'post'
  get '/posts', to: 'posts#index'
  get '/pages/:id', to: 'pages#show', as: 'page'
  get '/pages', to: 'pages#index'
end
