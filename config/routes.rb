Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root "informations#index"

  namespace :api do
    namespace :v1 do
      resources :plaid_authentications, only:[:create]
      resources :categories, only: [:index]
      resources :accounts, only: [:index]
      resources :items, only: [:index]
      resources :transactions, only: [:index]
    end
  end
end
