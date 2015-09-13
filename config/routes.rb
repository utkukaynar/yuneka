Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
  resources :products
  devise_for :admins
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :vendors
  resources :categories
  resources :posts
  resources :pages
  root "welcome#index"
end
