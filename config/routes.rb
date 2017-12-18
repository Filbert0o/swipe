Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root "informations#index"

  resources :categories, only: [:index]
  resources :items, only: [:index]
  resources :transactions, only: [:index]
  resources :accounts, only: [:index]
  resources :plaid_authentications, only: [:new, :create]
  resources :public_tokens, only: [:index]

  namespace :api do
    namespace :v1 do
      resources :categories, only: [:index]
    end
  end
end
