class UsersController < ApplicationController

  def profile
    render json: current_user
  end

  def create
    user = User.create(user_params)
    if user.valid?
      render json: { token: encode_token(user_payload(user)) }
    else
      render json: {errors: user.errors.fullmessages}, status: :unprocessable_entity
    end

  end

  def index
    @users= User.all
    render json: @users
  end

  private

  def user_params
    params.permit(:username, :password, :first_name, :last_name, :email, :avalability)
  end

end
