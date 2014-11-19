class RemoveFirstNameAndLastNameFromBookings < ActiveRecord::Migration
  def change
    remove_column :bookings, :first_name, :string
    remove_column :bookings, :last_name, :string
  end
end
