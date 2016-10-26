class AddCityIdToClients < ActiveRecord::Migration
  def change
    add_reference :clients, :province, index: true, foreign_key: true
    add_reference :clients, :area, index: true, foreign_key: true
    add_reference :clients, :city, index: true, foreign_key: true
  end
end
