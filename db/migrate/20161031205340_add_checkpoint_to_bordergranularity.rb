class AddCheckpointToBordergranularity < ActiveRecord::Migration[5.0]
  def change
    add_column :bordergranularities, :Checkpoint, :string
  end
end
