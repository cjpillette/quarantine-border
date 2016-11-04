class CreateFreights < ActiveRecord::Migration[5.0]
  def change
    create_table :freights do |t|
      t.date :inspectedon
      t.string :carrier
      t.integer :brmtype_id
      t.integer :ctnpresented
      t.integer :ctnreleased
      t.datetime :start_time
      t.datetime :finish_time
      t.string :importer
      t.string :exporter
      t.string :permit
      t.boolean :noncompliance
      t.text :comment

      t.timestamps
    end
  end
end
