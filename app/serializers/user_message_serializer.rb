class UserMessageSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :message_id, :text
end
