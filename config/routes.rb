Rails.application.routes.draw do
  # devise_token_auth setup
  #mount_devise_token_auth_for 'User', at: '/api/v1'

  root "user#index"

  namespace :api do
    namespace :v1 do 
        resources :users
    end
  end
end
