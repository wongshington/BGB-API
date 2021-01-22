class ApplicationController < ActionController::API
  # devise_token_auth setup
  include DeviseTokenAuth::Concerns::SetUserByToken

end
