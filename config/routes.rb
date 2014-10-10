Rails.application.routes.draw do
  root 'items#index'

  resources :items,  only: [:index]
  resources :orders, only: [:index, :show]
  resources :users,  only: [:index, :show]

  namespace :api do
    namespace :v1 do
      resources :items, only: [:index, :create]
    end
  end
end
