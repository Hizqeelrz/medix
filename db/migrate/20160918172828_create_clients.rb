class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :name
      t.string :phone
      t.string :email
      t.string :website
      t.string :company
      t.string :address
      t.string :city
      t.string :state
      t.string :country

      t.timestamps null: false
    end
  end
end
