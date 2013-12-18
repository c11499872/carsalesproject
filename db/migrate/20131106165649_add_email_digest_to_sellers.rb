class AddEmailDigestToSellers < ActiveRecord::Migration
  def change
    add_column :sellers, :email, :string

  end
end
