class CreateBookings < ActiveRecord::Migration[5.0]
  def change
    create_table :bookings do |t|
      t.string :unit
      t.string :packet
      t.datetime :start_date
      t.datetime :end_date
      t.integer :total_participant
      t.string :status
      t.text :note

      t.timestamps
    end
  end
end
