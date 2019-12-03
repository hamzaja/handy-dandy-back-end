class Booking < ApplicationRecord
  belongs_to :this_user, class_name: "User"
  belongs_to :other_user, class_name: "User"
end
