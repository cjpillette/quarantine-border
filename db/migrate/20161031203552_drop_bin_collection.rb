class DropBinCollection < ActiveRecord::Migration[5.0]
  def change
  	drop_table :bin_collections
  end

end
