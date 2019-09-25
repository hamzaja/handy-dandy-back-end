class UsersController < ApplicationController

  def profile
    render json: current_user
  end

  def create
    user = User.create(user_params)
    if user.valid?
      render json: {token: create_token(user.id)}
    else
      render json: {errors: user.errors.fullmessages}, status: :unprocessable_entity
    end

  end

  private

  def user_params
    params.permit(:username, :password)
  end

end
