class CreateEquipmentCategories < ActiveRecord::Migration
  def change
    create_table :equipment_categories do |t|
      t.string :name
      t.text :description

      t.timestamps null: false
    end
  end
end
