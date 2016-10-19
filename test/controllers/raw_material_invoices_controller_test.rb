# == Schema Information
#
# Table name: raw_material_invoices
#
#  id         :integer          not null, primary key
#  vendor_id  :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_raw_material_invoices_on_vendor_id  (vendor_id)
#
# Foreign Keys
#
#  fk_rails_d01874d9c2  (vendor_id => vendors.id)
#

require 'test_helper'

class RawMaterialInvoicesControllerTest < ActionController::TestCase
  setup do
    @raw_material_invoice = raw_material_invoices(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:raw_material_invoices)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create raw_material_invoice" do
    assert_difference('RawMaterialInvoice.count') do
      post :create, raw_material_invoice: { vendor_id: @raw_material_invoice.vendor_id }
    end

    assert_redirected_to raw_material_invoice_path(assigns(:raw_material_invoice))
  end

  test "should show raw_material_invoice" do
    get :show, id: @raw_material_invoice
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @raw_material_invoice
    assert_response :success
  end

  test "should update raw_material_invoice" do
    patch :update, id: @raw_material_invoice, raw_material_invoice: { vendor_id: @raw_material_invoice.vendor_id }
    assert_redirected_to raw_material_invoice_path(assigns(:raw_material_invoice))
  end

  test "should destroy raw_material_invoice" do
    assert_difference('RawMaterialInvoice.count', -1) do
      delete :destroy, id: @raw_material_invoice
    end

    assert_redirected_to raw_material_invoices_path
  end
end
