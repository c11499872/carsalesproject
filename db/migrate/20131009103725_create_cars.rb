class CreateCars < ActiveRecord::Migration
  def change
    create_table :cars do |t|
      t.integer :seller_id
      t.string :make
      t.string :model
      t.integer :price
      t.string :image
      t.string :colour

      t.timestamps
    end
  end
end
