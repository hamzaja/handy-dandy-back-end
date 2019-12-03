class CreateConnections < ActiveRecord::Migration[6.0]
  def change
    create_table :connections do |t|
      t.belongs_to :follower
      t.belongs_to :followee
      t.timestamps
    end
  end
end
