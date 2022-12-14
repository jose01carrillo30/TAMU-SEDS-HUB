# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users, controllers: {
    omniauth_callbacks: 'users/omniauth_callbacks'
  }
  devise_scope :user do
    get 'users/sign_in', to: 'users/sessions#new', as: :new_user_session
    get 'users/sign_out', to: 'users/sessions#destroy', as: :destroy_user_session
  end

  get 'users/export', to: 'users#export' # Note: this line must go before `resources :user`
  # get 'users/import', to: 'users#import'

  resources :announcements
  resources :offices
  resources :attendance_records
  resources :events
  resources :dues
  resources :users do 
    collection { post :import }
  end
  root 'announcements#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
