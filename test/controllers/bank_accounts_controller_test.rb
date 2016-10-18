# == Schema Information
#
# Table name: bank_accounts
#
#  id             :integer          not null, primary key
#  account_title  :string
#  account_number :string
#  iban           :string
#  balance        :integer
#  bank_name      :string
#  branch_name    :string
#  branch_address :string
#  branch_city    :string
#  user_id        :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#
# Indexes
#
#  index_bank_accounts_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_92daa8a387  (user_id => users.id)
#

require 'test_helper'

class BankAccountsControllerTest < ActionController::TestCase
  setup do
    @bank_account = bank_accounts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bank_accounts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bank_account" do
    assert_difference('BankAccount.count') do
      post :create, bank_account: { account_number: @bank_account.account_number, account_title: @bank_account.account_title, balance: @bank_account.balance, bank_name: @bank_account.bank_name, branch_address: @bank_account.branch_address, branch_city: @bank_account.branch_city, branch_name: @bank_account.branch_name, iban: @bank_account.iban, user_id: @bank_account.user_id }
    end

    assert_redirected_to bank_account_path(assigns(:bank_account))
  end

  test "should show bank_account" do
    get :show, id: @bank_account
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bank_account
    assert_response :success
  end

  test "should update bank_account" do
    patch :update, id: @bank_account, bank_account: { account_number: @bank_account.account_number, account_title: @bank_account.account_title, balance: @bank_account.balance, bank_name: @bank_account.bank_name, branch_address: @bank_account.branch_address, branch_city: @bank_account.branch_city, branch_name: @bank_account.branch_name, iban: @bank_account.iban, user_id: @bank_account.user_id }
    assert_redirected_to bank_account_path(assigns(:bank_account))
  end

  test "should destroy bank_account" do
    assert_difference('BankAccount.count', -1) do
      delete :destroy, id: @bank_account
    end

    assert_redirected_to bank_accounts_path
  end
end
