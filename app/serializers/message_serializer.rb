class MessageSerializer < ActiveModel::Serializer
  attributes :id, :name
  has_many :user_messages
end
