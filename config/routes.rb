# frozen_string_literal: true
Rails.application.routes.draw do
  get 'welcome/index'

  resources :examples, except: [:new, :edit]
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out/:id' => 'users#signout'
  patch '/change-password/:id' => 'users#changepw'
  resources :users, only: [:index, :show]
  resources :articles, only: [:index, :show, :create, :update, :destroy]
  resources :article, only: [:create, :show, :create, :update, :destroy] do
    resources :comments, only: [:show, :index, :create, :update, :destroy]
  end
end
