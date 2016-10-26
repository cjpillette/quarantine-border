class CreateFlights < ActiveRecord::Migration[5.0]
  def change
    create_table :flights do |t|
      t.date :date
      t.string :plane
      t.integer :total_pax
      t.integer :total_nc_pax
      t.datetime :start_time
      t.datetime :finish_time

      t.timestamps
    end
  end
end
