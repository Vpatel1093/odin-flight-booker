class CreateBookings < ActiveRecord::Migration
  def change
    create_table :bookings do |t|
      t.integer :flight_id

      t.timestamps null: false
    end
    add_index :bookings, :flight_id
  end
end
