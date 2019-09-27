class CreateBookings < ActiveRecord::Migration[6.0]
  def change
    create_table :bookings do |t|
      t.string :time
      t.string :date

      t.timestamps
    end
  end
end
