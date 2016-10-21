class AddBookingIdToLakesides < ActiveRecord::Migration[5.0]
  def change
    add_column :lakesides, :booking_id, :integer
    add_index :lakesides, :booking_id
  end
end
