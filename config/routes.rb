Rails.application.routes.draw do
  resources :reviews
  devise_for :users
  resources :sakes
  root 'sakes#index'
end
