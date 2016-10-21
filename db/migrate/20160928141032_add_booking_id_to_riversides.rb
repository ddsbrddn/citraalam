class AddBookingIdToRiversides < ActiveRecord::Migration[5.0]
  def change
    add_column :riversides, :booking_id, :integer
    add_index :riversides, :booking_id
  end
end
