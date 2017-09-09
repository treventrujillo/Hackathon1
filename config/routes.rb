Rails.application.routes.draw do
  root to: 'static_pages#show'

  resources :accounts do
    resources :posts, :bio
  end

  scope 'posts/:post_id', as: 'post' do
    resources :comments, only: [:new, :create]
  end

  devise_for :users
end
