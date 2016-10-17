class CreateOrderProducts < ActiveRecord::Migration
  def change
    create_table :order_products, id: false do |t|
      t.references :order, index: true, foreign_key: true
      t.references :product, index: true, foreign_key: true
      t.integer :quantity
      t.integer :price_per_unit
      t.integer :total_price

    end
  end
end
