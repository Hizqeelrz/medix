class AddGrandTotalToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :grandtotal, :integer
  end
end
