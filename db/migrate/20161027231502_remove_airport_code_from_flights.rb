class RemoveAirportCodeFromFlights < ActiveRecord::Migration[5.0]
  def change
    remove_column :flights, :airport_code, :string
  end
end
