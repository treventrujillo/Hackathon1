Rails.application.routes.draw do
  root to: 'static_pages#show'

  resources :posts

  resources :bios

  devise_for :users
end
