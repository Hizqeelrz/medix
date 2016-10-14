class AddVendorIdToRawMaterials < ActiveRecord::Migration
  def change
    add_reference :raw_materials, :vendor, index: true, foreign_key: true
  end
end
