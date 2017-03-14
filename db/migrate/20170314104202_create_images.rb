class CreateImages < ActiveRecord::Migration[5.0]
  def change
    create_table :images do |t|
      t.string :name
      t.string :creator
      t.integer :price
      t.string :print_size

      t.timestamps
    end
  end
end
