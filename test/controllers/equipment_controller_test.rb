# == Schema Information
#
# Table name: equipment
#
#  id         :integer          not null, primary key
#  name       :string
#  make       :string
#  model      :string
#  company    :string
#  price      :string
#  capacity   :string
#  life       :string
#  vendor_id  :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_equipment_on_vendor_id  (vendor_id)
#
# Foreign Keys
#
#  fk_rails_2cf3063014  (vendor_id => vendors.id)
#

require 'test_helper'

class EquipmentControllerTest < ActionController::TestCase
  setup do
    @equipment = equipment(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:equipment)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create equipment" do
    assert_difference('Equipment.count') do
      post :create, equipment: { capacity: @equipment.capacity, company: @equipment.company, life: @equipment.life, make: @equipment.make, model: @equipment.model, name: @equipment.name, price: @equipment.price, vendor_id: @equipment.vendor_id }
    end

    assert_redirected_to equipment_path(assigns(:equipment))
  end

  test "should show equipment" do
    get :show, id: @equipment
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @equipment
    assert_response :success
  end

  test "should update equipment" do
    patch :update, id: @equipment, equipment: { capacity: @equipment.capacity, company: @equipment.company, life: @equipment.life, make: @equipment.make, model: @equipment.model, name: @equipment.name, price: @equipment.price, vendor_id: @equipment.vendor_id }
    assert_redirected_to equipment_path(assigns(:equipment))
  end

  test "should destroy equipment" do
    assert_difference('Equipment.count', -1) do
      delete :destroy, id: @equipment
    end

    assert_redirected_to equipment_index_path
  end
end
