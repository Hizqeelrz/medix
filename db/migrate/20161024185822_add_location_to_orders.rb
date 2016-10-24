class AddLocationToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :lat, :float
    add_column :orders, :lon, :float
  end
end
