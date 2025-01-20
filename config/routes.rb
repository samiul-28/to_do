Rails.application.routes.draw do
  devise_for :users
  resources :categories

  resources :tasks do
    resources :comments, only: :create
  end
  
  resources :profiles, only: [:show, :edit, :update]

  root "tasks#index"
end
