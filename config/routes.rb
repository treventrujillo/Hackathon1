Rails.application.routes.draw do
  root to: 'static_pages#show'
  
  devise_for :users

<<<<<<< HEAD
  resources :posts do
    resources :comments
  end

  resources :bios
=======
  resources :accounts do
    resources :posts
  end

  resources :bios

  scope 'posts/:post_id', as: 'post' do
    resources :comments, only: [:new, :create]
  end
>>>>>>> this is about to break all of my stuff

end
