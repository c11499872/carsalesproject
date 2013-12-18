class AddLatitudeToCars < ActiveRecord::Migration
  def change
    add_column :cars, :latitude, :float

  end
end
