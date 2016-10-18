# == Schema Information
#
# Table name: bank_transactions
#
#  id               :integer          not null, primary key
#  bank_account_id  :integer
#  user_id          :integer
#  amount           :integer
#  transaction_type :integer
#  check_number     :string
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#
# Indexes
#
#  index_bank_transactions_on_bank_account_id  (bank_account_id)
#  index_bank_transactions_on_user_id          (user_id)
#
# Foreign Keys
#
#  fk_rails_226e742d93  (user_id => users.id)
#  fk_rails_e0117c6727  (bank_account_id => bank_accounts.id)
#

require 'test_helper'

class BankTransactionsControllerTest < ActionController::TestCase
  setup do
    @bank_transaction = bank_transactions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bank_transactions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bank_transaction" do
    assert_difference('BankTransaction.count') do
      post :create, bank_transaction: { amount: @bank_transaction.amount, bank_account_id: @bank_transaction.bank_account_id, check_number: @bank_transaction.check_number, transaction_type: @bank_transaction.transaction_type, user_id: @bank_transaction.user_id }
    end

    assert_redirected_to bank_transaction_path(assigns(:bank_transaction))
  end

  test "should show bank_transaction" do
    get :show, id: @bank_transaction
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bank_transaction
    assert_response :success
  end

  test "should update bank_transaction" do
    patch :update, id: @bank_transaction, bank_transaction: { amount: @bank_transaction.amount, bank_account_id: @bank_transaction.bank_account_id, check_number: @bank_transaction.check_number, transaction_type: @bank_transaction.transaction_type, user_id: @bank_transaction.user_id }
    assert_redirected_to bank_transaction_path(assigns(:bank_transaction))
  end

  test "should destroy bank_transaction" do
    assert_difference('BankTransaction.count', -1) do
      delete :destroy, id: @bank_transaction
    end

    assert_redirected_to bank_transactions_path
  end
end
