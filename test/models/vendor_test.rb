# == Schema Information
#
# Table name: vendors
#
#  id         :integer          not null, primary key
#  name       :string
#  company    :string
#  phone      :string
#  mobile     :string
#  address    :string
#  email      :string
#  city       :string
#  state      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  city_id    :integer
#
# Indexes
#
#  index_vendors_on_city_id  (city_id)
#
# Foreign Keys
#
#  fk_rails_155747d9ce  (city_id => cities.id)
#

require 'test_helper'

class VendorTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
