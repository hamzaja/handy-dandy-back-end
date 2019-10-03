class CreateUserSkills < ActiveRecord::Migration[6.0]
  def change
    create_table :user_skills do |t|
      t.string :experience
      t.string :hourly_price
      t.belongs_to :user
      t.belongs_to :skill
      t.timestamps
    end
  end
end
