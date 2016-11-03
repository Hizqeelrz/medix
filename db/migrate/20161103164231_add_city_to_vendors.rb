class AddCityToVendors < ActiveRecord::Migration
  def change
    add_reference :vendors, :city, index: true, foreign_key: true
  end
end
