# == Schema Information
#
# Table name: equipment_categories
#
#  id          :integer          not null, primary key
#  name        :string
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'test_helper'

class EquipmentCategoriesControllerTest < ActionController::TestCase
  setup do
    @equipment_category = equipment_categories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:equipment_categories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create equipment_category" do
    assert_difference('EquipmentCategory.count') do
      post :create, equipment_category: { description: @equipment_category.description, name: @equipment_category.name }
    end

    assert_redirected_to equipment_category_path(assigns(:equipment_category))
  end

  test "should show equipment_category" do
    get :show, id: @equipment_category
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @equipment_category
    assert_response :success
  end

  test "should update equipment_category" do
    patch :update, id: @equipment_category, equipment_category: { description: @equipment_category.description, name: @equipment_category.name }
    assert_redirected_to equipment_category_path(assigns(:equipment_category))
  end

  test "should destroy equipment_category" do
    assert_difference('EquipmentCategory.count', -1) do
      delete :destroy, id: @equipment_category
    end

    assert_redirected_to equipment_categories_path
  end
end
