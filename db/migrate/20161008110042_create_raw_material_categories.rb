class CreateRawMaterialCategories < ActiveRecord::Migration
  def change
    create_table :raw_material_categories do |t|
      t.string :name
      t.text :description

      t.timestamps null: false
    end
  end
end
