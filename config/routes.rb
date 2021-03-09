Rails.application.routes.draw do
  resources :weekly_reports
  resources :internships do
    get "confirm"
  end
  resources :announcements
  root :to => 'dashboard#index'
  get 'dashboard/index'
  devise_for :users
  resources :users, only: [:show, :index]

  get 'home/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
