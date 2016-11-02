class AddTotalToRawMaterialInvoices < ActiveRecord::Migration
  def change
    add_column :raw_material_invoices, :total, :integer
    add_index :raw_material_invoices, :total
  end
end
