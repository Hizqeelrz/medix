class CreateEquipment < ActiveRecord::Migration
  def change
    create_table :equipments do |t|

      t.timestamps null: false
    end
  end
end
