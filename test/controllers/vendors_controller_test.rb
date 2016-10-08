# == Schema Information
#
# Table name: vendors
#
#  id           :integer          not null, primary key
#  company_name :string
#  person_name  :string
#  phone        :string
#  mobile       :string
#  email        :string
#  address      :string
#  city         :string
#  state        :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

require 'test_helper'

class VendorsControllerTest < ActionController::TestCase
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
