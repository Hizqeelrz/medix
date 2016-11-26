# == Schema Information
#
# Table name: expenses
#
#  id                  :integer          not null, primary key
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#  amount              :integer
#  remarks             :string
#  user_id             :integer
#  expense_category_id :integer
#
# Indexes
#
#  index_expenses_on_expense_category_id  (expense_category_id)
#  index_expenses_on_user_id              (user_id)
#
# Foreign Keys
#
#  fk_rails_3f5911559b  (expense_category_id => expense_categories.id)
#  fk_rails_c3ee69df61  (user_id => users.id)
#

require 'test_helper'

class ExpenseTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
