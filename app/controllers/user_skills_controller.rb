class UserSkillsController < ApplicationController

  def index
    render json: UserSkill.all
  end

  def create
    @userskill = UserSkill.create(user_skillparams)
    render json: @userskill
  end

  def show
    @userskill = UserSkill.all.where(skill_id:(params[:id]))
    render json: @userskill
  end

private

  def user_skillparams
    params.permit(:user_id, :skill_id, :experience, :hourly_price)
  end

end
