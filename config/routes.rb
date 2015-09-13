Rails.application.routes.draw do
  resources :vendors
  resources :categories
  resources :posts
  resources :pages
  root "welcome#index"
end
