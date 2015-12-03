Rails.application.routes.draw do
  resources :users do
    collection do
      get :get_last_user
    end
    member do
      get :set_inactive
    end
  end

  get '/users/:id', to: 'users#show'

  require 'sidekiq/web'
  mount Sidekiq::Web => '/sidekiq'
end
