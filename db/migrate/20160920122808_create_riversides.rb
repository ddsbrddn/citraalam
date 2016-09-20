class CreateRiversides < ActiveRecord::Migration[5.0]
  def change
    create_table :riversides do |t|
      t.string :unit
      t.string :packet
      t.datetime :start_time
      t.datetime :end_time
      t.string :status

      t.timestamps
    end
  end
end
