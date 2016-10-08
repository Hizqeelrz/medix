class CreateVendors < ActiveRecord::Migration
  def change
    create_table :vendors do |t|
      t.string :company_name
      t.string :person_name
      t.string :phone
      t.string :mobile
      t.string :email
      t.string :address
      t.string :city
      t.string :state

      t.timestamps null: false
    end
  end
end
