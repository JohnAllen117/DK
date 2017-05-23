Rails.application.routes.draw do
  devise_for :users, ActiveAdmin::Devise.config
  devise_for :admin_users, ActiveAdmin::Devise.config

  ActiveAdmin.routes(self)

  root 'home#index'

  resources :users

  resources :blog_posts, only: [:show, :index]

  namespace :admin do
    resources :blog_posts, only: [:new, :create, :edit, :update, :destroy]
  end
end
