# == Schema Information
#
# Table name: equipment
#
#  id         :integer          not null, primary key
#  name       :string
#  make       :string
#  model      :string
#  company    :string
#  price      :string
#  capacity   :string
#  life       :string
#  vendor_id  :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_equipment_on_vendor_id  (vendor_id)
#
# Foreign Keys
#
#  fk_rails_2cf3063014  (vendor_id => vendors.id)
#

require 'test_helper'

class EquipmentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
