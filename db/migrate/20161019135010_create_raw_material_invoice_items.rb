class CreateRawMaterialInvoiceItems < ActiveRecord::Migration
  def change
    create_table :raw_material_invoice_items do |t|
      t.integer :quantity
      t.string :unit
      t.integer :price
      t.references :raw_material, index: true, foreign_key: true
      t.references :raw_material_invoice, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
