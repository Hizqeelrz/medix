class AddVendorToEquipments < ActiveRecord::Migration
  def change
    add_reference :equipments, :vendor, index: true, foreign_key: true
  end
end
