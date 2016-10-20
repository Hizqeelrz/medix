# == Schema Information
#
# Table name: equipments
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
#  index_equipments_on_vendor_id  (vendor_id)
#
# Foreign Keys
#
#  fk_rails_59cdc1fcb6  (vendor_id => vendors.id)
#

require 'test_helper'

class EquipmentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
