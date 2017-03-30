class CreateBookings < ActiveRecord::Migration[5.0]
  def change
    create_table :bookings do |t|
      t.string :num_booking
      t.decimal :total
      t.integer :user_id
      t.integer :flight_id

      t.timestamps
    end
    add_index :bookings, :user_id
    add_index :bookings, :flight_id
    add_index :bookings, [:user_id, :flight_id], unique: true
  end
end
