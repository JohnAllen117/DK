Rails.application.routes.draw do
  devise_for :users
  root 'home#index'

  resources :users

  resources :blog_posts, only: [:show, :index]

  namespace :admin do
    resources :blog_posts, only: [:new, :create, :edit, :update, :destroy]
  end
end
