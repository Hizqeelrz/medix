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

class BankTransactionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
