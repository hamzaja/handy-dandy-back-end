class CreateUserMessages < ActiveRecord::Migration[6.0]
  def change
    create_table :user_messages do |t|
      t.string :text
      t.belongs_to :user
      t.belongs_to :message
      t.timestamps
    end
  end
end
