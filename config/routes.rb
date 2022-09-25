Rails.application.routes.draw do
  get 'pages/home'
  devise_for :users, controllers: {
    registrations: 'users/registrations',
    sessions: 'users/sessions',
    omniauth_callbacks: 'users/omniauth_callbacks'
  }
  resources :announcements
  resources :offices
  resources :attendance_records
  resources :events
  resources :dues
  resources :users
  root 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
