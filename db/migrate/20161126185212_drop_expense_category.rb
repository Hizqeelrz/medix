class DropExpenseCategory < ActiveRecord::Migration
  def change
  	drop_table :expense_categories do |t|
      t.string :name
      t.text :description
      t.timestamps null: false
    end      
  end
end
