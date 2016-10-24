# == Schema Information
#
# Table name: orders
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  client_id  :integer
#  user_id    :integer
#  lat        :float
#  lon        :float
#  grandtotal :integer
#
# Indexes
#
#  index_orders_on_client_id  (client_id)
#  index_orders_on_user_id    (user_id)
#
# Foreign Keys
#
#  fk_rails_5c8e53c896  (client_id => clients.id)
#  fk_rails_f868b47f6a  (user_id => users.id)
#

require 'test_helper'

class OrdersControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should get show" do
    get :show
    assert_response :success
  end

  test "should get edit" do
    get :edit
    assert_response :success
  end

end
