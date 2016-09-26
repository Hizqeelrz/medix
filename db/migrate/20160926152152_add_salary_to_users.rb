class AddSalaryToUsers < ActiveRecord::Migration
  def change
    add_column :users, :basic_salary, :integer
    add_index :users, :basic_salary
  end
end
