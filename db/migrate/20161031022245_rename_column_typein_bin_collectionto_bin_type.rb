class RenameColumnTypeinBinCollectiontoBinType < ActiveRecord::Migration[5.0]
  

  def change
  	rename_column :bin_collection, :type, :bin_type

  end
end
