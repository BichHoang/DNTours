class CreateTours < ActiveRecord::Migration[5.1]
  def change
    create_table :tours do |t|
      t.string :tour_name
      t.string :place
      t.integer :local_id
      t.string :price
      t.string :day_number
      t.text :detail
      t.string :image

      t.timestamps
    end
  end
end
