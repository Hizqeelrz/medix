class AddNicToUsers < ActiveRecord::Migration
  def change
    add_column :users, :nic, :string
    add_column :users, :address, :string
    add_column :users, :city, :string
    add_column :users, :state, :string
  end
end
