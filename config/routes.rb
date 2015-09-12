Rails.application.routes.draw do
  resources :categories
  resources :posts
  resources :pages
  root "welcome#index"
end
