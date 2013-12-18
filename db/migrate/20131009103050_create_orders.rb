class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :car_id
      t.integer :user_id
      t.date :dateordered
      t.integer :daysremaining

      t.timestamps
    end
  end
end
