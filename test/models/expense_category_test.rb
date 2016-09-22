# == Schema Information
#
# Table name: expense_categories
#
#  id          :integer          not null, primary key
#  name        :string
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'test_helper'

class ExpenseCategoryTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
