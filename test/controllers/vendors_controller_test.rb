# == Schema Information
#
# Table name: vendors
#
#  id         :integer          not null, primary key
#  name       :string
#  company    :string
#  phone      :string
#  mobile     :string
#  address    :string
#  email      :string
#  city       :string
#  state      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  city_id    :integer
#
# Indexes
#
#  index_vendors_on_city_id  (city_id)
#
# Foreign Keys
#
#  fk_rails_155747d9ce  (city_id => cities.id)
#

require 'test_helper'

class VendorsControllerTest < ActionController::TestCase
  setup do
    @vendor = vendors(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:vendors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create vendor" do
    assert_difference('Vendor.count') do
      post :create, vendor: { address: @vendor.address, city: @vendor.city, company: @vendor.company, email: @vendor.email, mobile: @vendor.mobile, name: @vendor.name, phone: @vendor.phone, state: @vendor.state }
    end

    assert_redirected_to vendor_path(assigns(:vendor))
  end

  test "should show vendor" do
    get :show, id: @vendor
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @vendor
    assert_response :success
  end

  test "should update vendor" do
    patch :update, id: @vendor, vendor: { address: @vendor.address, city: @vendor.city, company: @vendor.company, email: @vendor.email, mobile: @vendor.mobile, name: @vendor.name, phone: @vendor.phone, state: @vendor.state }
    assert_redirected_to vendor_path(assigns(:vendor))
  end

  test "should destroy vendor" do
    assert_difference('Vendor.count', -1) do
      delete :destroy, id: @vendor
    end

    assert_redirected_to vendors_path
  end
end
