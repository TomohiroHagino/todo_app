Rails.application.routes.draw do
  resources :tags
  root to: "home#index"

  resources :goals do
      resources :todos do
        member do
          get "sort"
        end
      end
  end
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
