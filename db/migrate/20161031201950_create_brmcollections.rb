class CreateBrmcollections < ActiveRecord::Migration[5.0]
  def change
    create_table :brmcollections do |t|
      t.datetime :collectedon
      t.decimal :weight
      t.boolean :chopped
      t.boolean :mqeisubmitted

      t.timestamps
    end
  end
end
