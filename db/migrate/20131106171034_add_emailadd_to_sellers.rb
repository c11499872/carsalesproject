class AddEmailaddToSellers < ActiveRecord::Migration
  def change
    add_column :sellers, :emailadd, :string

  end
end
