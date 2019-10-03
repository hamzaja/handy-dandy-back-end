class UserSkillSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :skill_id, :experience, :hourly_price

end
