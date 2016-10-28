class AddAirportCodeToFlights < ActiveRecord::Migration[5.0]
  def change
    add_column :flights, :airport_code, :string
  end
end
