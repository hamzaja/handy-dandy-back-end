class UserSkillSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :skill_id, :experience
end
