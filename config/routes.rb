Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root "informations#index"

  resources :accounts, only: [:index]

  namespace :api do
    namespace :v1 do
      resources :accounts, only: [:index]
    end
  end
end
