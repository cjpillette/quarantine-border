class AddAirportIdToBinCollection < ActiveRecord::Migration[5.0]
  def change
    add_column :bin_collections, :airport_id, :integer
  end
end
