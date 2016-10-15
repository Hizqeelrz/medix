class CreateProductIngrediants < ActiveRecord::Migration
  def change
    create_table :product_ingrediants do |t|
      t.references :raw_material, index: true, foreign_key: true
      t.references :product, index: true, foreign_key: true
      t.string :unit
      t.integer :quantity

      t.timestamps null: false
    end
  end
end
