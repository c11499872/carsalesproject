class AddDateOfRegistrationToCars < ActiveRecord::Migration
  def change
    add_column :cars, :date_of_registration, :date

  end
end
