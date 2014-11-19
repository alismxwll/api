class CondenseName < ActiveRecord::Migration
  def change_table
    change_table :bookings do |t|
      t.remove :first_name, :last_name
      t.add :name
    end
  end
end
