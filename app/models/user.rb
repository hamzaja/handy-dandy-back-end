class User < ApplicationRecord
  has_secure_password
  has_many :user_skills
  has_many :skills, through: :user_skills

  has_many :user_messages
  has_many :messages, through: :user_messages

# for booking
  has_many :booked_users, foreign_key: :this_user_id, class_name: 'Booking'
  has_many :other_users, through: :booked_users

  has_many :client_users, foreign_key: :this_user_id, class_name: 'Booking'
  has_many :this_users, through: :client_users

# for connection
  has_many :followed_users, foreign_key: :follower_id, class_name: 'Connection'
  has_many :followees, through: :followed_users

  has_many :following_users, foreign_key: :followee_id, class_name: 'Connection'
  has_many :followers, through: :following_users

end
