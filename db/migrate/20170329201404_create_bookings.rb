class CreateBookings < ActiveRecord::Migration[5.0]
  def change
    create_table :bookings do |t|
      t.string :num_booking
      t.decimal :total
      t.references :flight, foreign_key: true
      t. references :user, foreign_key: true

      t.timestamps
    end
  end
end
