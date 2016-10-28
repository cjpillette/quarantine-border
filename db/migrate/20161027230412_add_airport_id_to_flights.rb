class AddAirportIdToFlights < ActiveRecord::Migration[5.0]
  def change
    add_column :flights, :airport_id, :integer
  end
end
