# == Schema Information
#
# Table name: raw_material_invoice_items
#
#  id                      :integer          not null, primary key
#  quantity                :integer
#  unit                    :string
#  price                   :integer
#  raw_material_id         :integer
#  raw_material_invoice_id :integer
#  created_at              :datetime         not null
#  updated_at              :datetime         not null
#
# Indexes
#
#  index_raw_material_invoice_items_on_raw_material_id          (raw_material_id)
#  index_raw_material_invoice_items_on_raw_material_invoice_id  (raw_material_invoice_id)
#
# Foreign Keys
#
#  fk_rails_30604e85e0  (raw_material_id => raw_materials.id)
#  fk_rails_4046762591  (raw_material_invoice_id => raw_material_invoices.id)
#

require 'test_helper'

class RawMaterialInvoiceItemsControllerTest < ActionController::TestCase
  setup do
    @raw_material_invoice_item = raw_material_invoice_items(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:raw_material_invoice_items)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create raw_material_invoice_item" do
    assert_difference('RawMaterialInvoiceItem.count') do
      post :create, raw_material_invoice_item: { price: @raw_material_invoice_item.price, quantity: @raw_material_invoice_item.quantity, raw_material_id: @raw_material_invoice_item.raw_material_id, raw_material_invoice_id: @raw_material_invoice_item.raw_material_invoice_id, unit: @raw_material_invoice_item.unit }
    end

    assert_redirected_to raw_material_invoice_item_path(assigns(:raw_material_invoice_item))
  end

  test "should show raw_material_invoice_item" do
    get :show, id: @raw_material_invoice_item
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @raw_material_invoice_item
    assert_response :success
  end

  test "should update raw_material_invoice_item" do
    patch :update, id: @raw_material_invoice_item, raw_material_invoice_item: { price: @raw_material_invoice_item.price, quantity: @raw_material_invoice_item.quantity, raw_material_id: @raw_material_invoice_item.raw_material_id, raw_material_invoice_id: @raw_material_invoice_item.raw_material_invoice_id, unit: @raw_material_invoice_item.unit }
    assert_redirected_to raw_material_invoice_item_path(assigns(:raw_material_invoice_item))
  end

  test "should destroy raw_material_invoice_item" do
    assert_difference('RawMaterialInvoiceItem.count', -1) do
      delete :destroy, id: @raw_material_invoice_item
    end

    assert_redirected_to raw_material_invoice_items_path
  end
end
