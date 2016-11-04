class CreateBrmtypes < ActiveRecord::Migration[5.0]
  def change
    create_table :brmtypes do |t|
      t.string :name

      t.timestamps
    end
  end
end
