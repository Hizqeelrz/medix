# == Schema Information
#
# Table name: order_products
#
#  order_id       :integer
#  product_id     :integer
#  quantity       :integer
#  price_per_unit :integer
#  total_price    :integer
#
# Indexes
#
#  index_order_products_on_order_id    (order_id)
#  index_order_products_on_product_id  (product_id)
#
# Foreign Keys
#
#  fk_rails_96c0709f78  (product_id => products.id)
#  fk_rails_f40b8ccee4  (order_id => orders.id)
#

require 'test_helper'

class OrderProductTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
