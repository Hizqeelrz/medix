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

class VendorTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
