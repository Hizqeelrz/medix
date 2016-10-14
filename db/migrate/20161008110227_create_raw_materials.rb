class CreateRawMaterials < ActiveRecord::Migration
  def change
    create_table :raw_materials do |t|
      t.string :name
      t.string :quantity
      t.string :price
      t.references :raw_material_category, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
