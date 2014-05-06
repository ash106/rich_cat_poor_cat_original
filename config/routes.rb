Rails.application.routes.draw do
  resources :cats

  get 'home/index'

  root 'home#index'
  devise_for :users, :controllers => {:registrations => "registrations"}
  resources :users
end
