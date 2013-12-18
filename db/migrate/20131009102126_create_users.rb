class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :address
      t.string :email
      t.string :paymentmethod

      t.timestamps
    end
  end
end
