Rails.application.routes.draw do
  resources :posts
  resources :pages
  root "welcome#index"
end
