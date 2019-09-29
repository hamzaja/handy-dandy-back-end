class UserSkillsController < ApplicationController

  def index
    render json: UserSkill.all
  end

  def create

    @user = UserSkill.create(user_skillparams)
    render json: @user
    
  end

private

  def user_skillparams
    params.permit(:user_id, :skill_id, :experience)
  end

end
