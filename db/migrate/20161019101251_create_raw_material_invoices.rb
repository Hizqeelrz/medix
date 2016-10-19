class CreateRawMaterialInvoices < ActiveRecord::Migration
  def change
    create_table :raw_material_invoices do |t|
      t.references :vendor, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
