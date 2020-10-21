class Api::V1::SessionsController < ApplicationController
    def create
      errors = User.validate_credentials(
        params[:user][:email],
        params[:user][:password]
      )
  
      if errors.empty?
        @user = User.find_by_credentials(
          params[:user][:email],
          params[:user][:password]
        )
        login!(@user)
        render 'api/users/show'
      else
        render json: errors, status: 422
      end
    end
  
    def destroy
      if current_user
        logout!
        render json: {}
      end
    end
end