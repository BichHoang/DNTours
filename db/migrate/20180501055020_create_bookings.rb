class CreateBookings < ActiveRecord::Migration[5.1]
  def change
    create_table :bookings do |t|
      t.integer :tour_id
      t.string :customer
      t.string :phone
      t.string :email
      t.string :adress

      t.timestamps
    end
  end
end
