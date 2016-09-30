class CreateAreas < ActiveRecord::Migration
  def change
    create_table :areas do |t|
      t.string :name
      t.integer :province_id

      t.timestamps null: false
    end
    add_index :areas, :province_id
  end
end
