class AddCustomerIdToRiversides < ActiveRecord::Migration[5.0]
  def change
    add_column :riversides, :customer_id, :integer
    add_index :riversides, :customer_id
  end
end
