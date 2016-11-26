class AddFieldsToExpenses < ActiveRecord::Migration
  def change
    add_column :expenses, :amount, :integer
    add_column :expenses, :remarks, :string
    add_reference :expenses, :user, index: true, foreign_key: true
    add_reference :expenses, :expense_category, index: true, foreign_key: true
  end
end
