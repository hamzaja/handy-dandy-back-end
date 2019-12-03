class UserSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :avalability, :email, :username
  has_many :skills
  has_many :booked_users
  has_many :followed_users
  has_many :following_users
  has_many :messages
end
