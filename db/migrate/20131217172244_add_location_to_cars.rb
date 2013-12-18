class AddLocationToCars < ActiveRecord::Migration
  def change
    add_column :cars, :location, :string

  end
end
