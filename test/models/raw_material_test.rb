# == Schema Information
#
# Table name: raw_materials
#
#  id                       :integer          not null, primary key
#  name                     :string
#  raw_material_category_id :integer
#  created_at               :datetime         not null
#  updated_at               :datetime         not null
#
# Indexes
#
#  index_raw_materials_on_raw_material_category_id  (raw_material_category_id)
#
# Foreign Keys
#
#  fk_rails_9d0711621f  (raw_material_category_id => raw_material_categories.id)
#

require 'test_helper'

class RawMaterialTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
