class CreateFlights < ActiveRecord::Migration[5.0]
  def change
    create_table :flights do |t|
      t.string :num_flight
      t.date :date
      t.time :depart
      t.string :from
      t.string :to
      t.string :duration
      t.integer :cost
      t.decimal :passengers
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
