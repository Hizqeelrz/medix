class CreateCities < ActiveRecord::Migration
  def change
    create_table :cities do |t|
      t.string :name
      t.integer :area_id

      t.timestamps null: false
    end
    add_index :cities, :area_id
  end
end
