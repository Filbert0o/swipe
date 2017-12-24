Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root "informations#index"

  resources :settings, only: [:index]
  resources :accounts, only: [:index]
  resources :purchases, only: [:index]

  namespace :api do
    namespace :v1 do
      resources :accounts, only: [:index]
      resources :purchases, only: [:index]
      resources :budgets, only: [:index, :create]
    end
  end
end
