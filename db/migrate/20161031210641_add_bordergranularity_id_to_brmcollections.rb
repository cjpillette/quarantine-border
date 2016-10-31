class AddBordergranularityIdToBrmcollections < ActiveRecord::Migration[5.0]
  def change
    add_column :brmcollections, :bordergranularity_id, :integer
  end
end
