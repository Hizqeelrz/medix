class CreateVendors < ActiveRecord::Migration
  def change
    create_table :vendors do |t|
      t.string :name
      t.string :company
      t.string :phone
      t.string :mobile
      t.string :address
      t.string :email
      t.string :city
      t.string :state

      t.timestamps null: false
    end
  end
end
