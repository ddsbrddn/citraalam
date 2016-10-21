class AddUserIdToBookings < ActiveRecord::Migration[5.0]
  def change
    add_column :bookings, :user_id, :integer
    add_index :bookings, :user_id
  end
end
