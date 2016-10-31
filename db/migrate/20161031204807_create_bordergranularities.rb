class CreateBordergranularities < ActiveRecord::Migration[5.0]
  def change
    create_table :bordergranularities do |t|

      t.timestamps
    end
  end
end
