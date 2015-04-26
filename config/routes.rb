Rails.application.routes.draw do

  devise_for :users
  resources :sakes do
    resources :reviews, except: [:show, :index]
  end
  root 'sakes#index'
end
