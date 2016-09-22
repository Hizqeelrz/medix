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

class ExpenseCategory < ActiveRecord::Base
end
