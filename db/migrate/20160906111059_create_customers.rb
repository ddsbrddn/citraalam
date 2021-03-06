class CreateCustomers < ActiveRecord::Migration[5.0]
  def change
    create_table :customers do |t|
      t.string :organization
      t.string :segment
      t.text :address
      t.string :kecamatan
      t.string :city
      t.string :province
      t.integer :postal_code
      t.string :contact_person
      t.integer :phone
      t.string :email
      t.integer :total_visit
      t.text :note

      t.timestamps
    end
  end
end
