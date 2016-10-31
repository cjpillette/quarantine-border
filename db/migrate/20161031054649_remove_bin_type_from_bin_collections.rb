class RemoveBinTypeFromBinCollections < ActiveRecord::Migration[5.0]
  def change
    remove_column :bin_collections, :bin_type, :integer
  end
end
