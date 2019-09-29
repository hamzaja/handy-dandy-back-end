class User < ApplicationRecord
  has_secure_password
  has_many :user_skills
  has_many :skills, through: :user_skills

  has_many :booked_users, foreign_key: :this_user_id, class_name: 'Booking'
  has_many :other_users, through: :booked_users


  has_many :client_users, foreign_key: :this_user_id, class_name: 'Booking'
  has_many :this_users, through: :client_users




end
