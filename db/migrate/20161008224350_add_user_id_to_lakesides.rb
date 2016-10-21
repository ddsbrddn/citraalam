class AddUserIdToLakesides < ActiveRecord::Migration[5.0]
  def change
    add_column :lakesides, :user_id, :integer
    add_index :lakesides, :user_id
  end
end
