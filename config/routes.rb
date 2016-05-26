Rails.application.routes.draw do
  namespace :admin do
    root 'admin/dashboard#index'
  end

  devise_for :users
  root 'home#index'

  resources :users
end
