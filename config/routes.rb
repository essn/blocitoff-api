Rails.application.routes.draw do
  devise_for :users

  namespace :api do
    mount_devise_token_auth_for 'User', at: 'auth'
    resources :users do
      resources :items, only: [:index, :show, :create, :destroy]
    end
  end
end
