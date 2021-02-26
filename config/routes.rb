Rails.application.routes.draw do
  resources :internships
  resources :announcements
  root :to => 'dashboard#index'
  get 'dashboard/index'
  devise_for :users
  get 'home/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
