class SkillsController < ApplicationController

  def index
    @skills= Skill.all
    render json: @skills
  end

  def create
    @skill = Skill.create(skill_params)
    render json: @skill
  end

private

  def skill_params
      params.permit(:name, :catagory)
  end

end
