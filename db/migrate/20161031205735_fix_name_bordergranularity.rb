class FixNameBordergranularity < ActiveRecord::Migration[5.0]
  def change
  	rename_column :bordergranularities, :Checkpoint, :checkpoint
  end
end
