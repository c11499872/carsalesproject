class AddLongitudeToCars < ActiveRecord::Migration
  def change
    add_column :cars, :longitude, :float

  end
end
