class CreateBinCollections < ActiveRecord::Migration[5.0]
  def change
    create_table :bin_collections do |t|
      t.datetime :collection_date
      t.integer :type
      t.decimal :weight
      t.boolean :inspected_for_brm
      t.boolean :mqei_submitted

      t.timestamps
    end
  end
end
