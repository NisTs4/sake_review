Rails.application.routes.draw do
  devise_for :users
  resources :sakes
  root 'sakes#index'
end
