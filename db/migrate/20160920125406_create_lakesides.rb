class CreateLakesides < ActiveRecord::Migration[5.0]
  def change
    create_table :lakesides do |t|
      t.string :organization
      t.string :packet
      t.datetime :start_time
      t.datetime :end_time
      t.string :status

      t.timestamps
    end
  end
end
