Rails.application.routes.draw do
  get 'bios/index'

  get 'bios/show'

  get 'bios/new'

  root to: 'accounts#index'

  devise_for :users

  resources :accounts
end
