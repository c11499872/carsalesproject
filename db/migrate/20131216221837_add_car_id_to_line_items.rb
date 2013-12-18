class AddCarIdToLineItems < ActiveRecord::Migration
  def change
    add_column :line_items, :car_id, :integer

  end
end
