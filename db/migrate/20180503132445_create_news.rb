class CreateNews < ActiveRecord::Migration[5.1]
  def change
    create_table :news do |t|
      t.string :new_name
      t.string :image
      t.datetime :date
      t.string :url

      t.timestamps
    end
  end
end
