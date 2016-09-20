class AddOrganizationToRiversides < ActiveRecord::Migration[5.0]
  def change
    add_column :riversides, :organization, :string
  end
end
