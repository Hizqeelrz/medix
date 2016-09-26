class AddMaritalStatusToUsers < ActiveRecord::Migration
  def change
    add_column :users, :marital_status, :integer
    add_index :users, :marital_status
  end
end
