class ChangeNames < ActiveRecord::Migration[5.0]
  def change
  	rename_column :bin_collections, :type, :bin_type
  end
end
