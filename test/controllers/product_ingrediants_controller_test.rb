# == Schema Information
#
# Table name: product_ingrediants
#
#  id              :integer          not null, primary key
#  raw_material_id :integer
#  product_id      :integer
#  unit            :string
#  quantity        :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
# Indexes
#
#  index_product_ingrediants_on_product_id       (product_id)
#  index_product_ingrediants_on_raw_material_id  (raw_material_id)
#
# Foreign Keys
#
#  fk_rails_1c8692e51e  (product_id => products.id)
#  fk_rails_6e1cc92eec  (raw_material_id => raw_materials.id)
#

require 'test_helper'

class ProductIngrediantsControllerTest < ActionController::TestCase
  setup do
    @product_ingrediant = product_ingrediants(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:product_ingrediants)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create product_ingrediant" do
    assert_difference('ProductIngrediant.count') do
      post :create, product_ingrediant: { product_id: @product_ingrediant.product_id, quantity: @product_ingrediant.quantity, raw_material_id: @product_ingrediant.raw_material_id, unit: @product_ingrediant.unit }
    end

    assert_redirected_to product_ingrediant_path(assigns(:product_ingrediant))
  end

  test "should show product_ingrediant" do
    get :show, id: @product_ingrediant
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @product_ingrediant
    assert_response :success
  end

  test "should update product_ingrediant" do
    patch :update, id: @product_ingrediant, product_ingrediant: { product_id: @product_ingrediant.product_id, quantity: @product_ingrediant.quantity, raw_material_id: @product_ingrediant.raw_material_id, unit: @product_ingrediant.unit }
    assert_redirected_to product_ingrediant_path(assigns(:product_ingrediant))
  end

  test "should destroy product_ingrediant" do
    assert_difference('ProductIngrediant.count', -1) do
      delete :destroy, id: @product_ingrediant
    end

    assert_redirected_to product_ingrediants_path
  end
end
