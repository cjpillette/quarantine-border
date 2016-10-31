class AddAirportIdtoBrmcollections < ActiveRecord::Migration[5.0]
  def change
  	 add_column :brmcollections, :airport_id, :integer
  end
end
