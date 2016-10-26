class RemoveStateFromClients < ActiveRecord::Migration
  def change
    remove_column :clients, :city, :string
    remove_column :clients, :state, :string
    remove_column :clients, :country, :string
  end
end
