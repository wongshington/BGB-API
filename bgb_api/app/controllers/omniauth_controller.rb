class OmniauthController < ApplicationController

  def facebook
    puts "reach the omniauth facebook controller function"
    puts "controllers/omniauth_controller.rb"
    @user = User.create_from_provider_data(request.env['omniauth.auth'])
    if @user.persisted?
      puts "facebook login successful"
      render json: {message: 'Success with Facebook Login'}

    else
      # render an error
      render json: {message: 'Error with Facebook Login'}, status: 404
    end
  end
  
  def failure
    puts "failure"
    render json: {error: "bad news bears"}, status: 401
  end

end