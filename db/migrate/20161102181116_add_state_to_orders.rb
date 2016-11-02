class AddStateToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :state, :integer
    add_index :orders, :state
  end
end
