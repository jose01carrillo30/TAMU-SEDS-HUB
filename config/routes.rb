Rails.application.routes.draw do
  resources :announcements
  resources :offices
  resources :attendance_records
  resources :events
  resources :dues
  resources :members
  root 'announcements#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
