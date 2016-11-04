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

class BankAccount < ActiveRecord::Base
  belongs_to :user
  has_many :bank_transactions

  validates :account_title, :account_number, :bank_name, :branch_name, presence: true
end
