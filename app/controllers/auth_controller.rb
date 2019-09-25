class AuthController < ApplicationController
  def login
    user = User.find_by(username: params[:username])
    is_autheticated = user.authenticate(params[:password])

    if is_autheticated
      render json: {token: create_token(user.id)} #i want a token insted
    else
      render json: { errors: ["Wrong username/password"] }, status: :unprocessable_entity
    end
  end

end
