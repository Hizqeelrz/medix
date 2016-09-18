class CreateAssets < ActiveRecord::Migration
  def change
    create_table :assets do |t|
      t.string :name
      t.references :asset_category, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
