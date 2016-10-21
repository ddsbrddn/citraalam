class AddCustomerIdToLakesides < ActiveRecord::Migration[5.0]
  def change
    add_column :lakesides, :customer_id, :integer
    add_index :lakesides, :customer_id
  end
end
