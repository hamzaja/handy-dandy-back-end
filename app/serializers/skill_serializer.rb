class SkillSerializer < ActiveModel::Serializer
  attributes :id, :name, :catagory
  has_many :users
end
