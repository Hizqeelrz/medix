class AddFieldsToEquipments < ActiveRecord::Migration
  def change
    add_column :equipments, :name, :string
    add_column :equipments, :make, :string
    add_column :equipments, :model, :string
    add_column :equipments, :company, :string
    add_column :equipments, :price, :string
    add_column :equipments, :capacity, :string
    add_column :equipments, :life, :string
    add_reference :equipments, :vendor, index: true, foreign_key: true
  end
end
