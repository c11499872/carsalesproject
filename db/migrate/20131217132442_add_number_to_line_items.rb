class AddNumberToLineItems < ActiveRecord::Migration
  def change
    add_column :line_items, :number, :integer, default: 1

  end
end
