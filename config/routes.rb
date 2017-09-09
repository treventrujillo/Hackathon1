Rails.application.routes.draw do
  get 'comments/index'

  get 'comments/show'

  get 'comments/new'

  get 'posts/index'

  get 'posts/show'

  get 'posts/new'

  get 'bios/index'

  get 'bios/show'

  get 'bios/new'

  root to: 'accounts#index'

  devise_for :users

  resources :accounts
end
