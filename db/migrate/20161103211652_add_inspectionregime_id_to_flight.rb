class AddInspectionregimeIdToFlight < ActiveRecord::Migration[5.0]
  def change
    add_column :flights, :inspectionregime_id, :integer
  end
end
