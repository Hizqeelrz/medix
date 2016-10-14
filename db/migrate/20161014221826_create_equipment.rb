class CreateEquipment < ActiveRecord::Migration
  def change
    create_table :equipment do |t|
      t.string :name
      t.string :make
      t.string :model
      t.string :company
      t.string :price
      t.string :capacity
      t.string :life
      t.references :vendor, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
