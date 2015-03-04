Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'api/auth'

  namespace :api do
    resources :users do
      resources :items, only: [:index, :show, :create]
    end
  end
end
