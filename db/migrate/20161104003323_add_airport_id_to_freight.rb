class AddAirportIdToFreight < ActiveRecord::Migration[5.0]
  def change
    add_column :freights, :airport_id, :integer
  end
end
