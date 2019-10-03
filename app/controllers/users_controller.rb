class UsersController < ApplicationController

  def profile
    render json: current_user
  end

  def create
    user = User.create(user_params)
    if user.valid?
      render json: { token: encode_token(user_payload(user)) }
    else
      render json: {errors: user.errors.messages}, status: :unprocessable_entity
    end

  end

  def index
    @users= User.all
    render json: @users
  end



  def show
    @user = User.find(params[:id])
    render json: @user
  end


  private

  def user_params
    params.permit(:username, :password, :first_name, :last_name, :email, :avalability, :skills)
  end

end
