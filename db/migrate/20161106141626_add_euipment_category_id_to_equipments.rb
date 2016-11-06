class AddEuipmentCategoryIdToEquipments < ActiveRecord::Migration
  def change
    add_reference :equipments, :equipment_category, index: true, foreign_key: true
  end
end
