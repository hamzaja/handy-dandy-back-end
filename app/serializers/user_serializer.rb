class UserSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :avalability, :email, :username
  has_many :skills
  has_many :booked_users
end
