# == Schema Information
#
# Table name: product_ingrediants
#
#  id              :integer          not null, primary key
#  raw_material_id :integer
#  product_id      :integer
#  unit            :string
#  quantity        :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
# Indexes
#
#  index_product_ingrediants_on_product_id       (product_id)
#  index_product_ingrediants_on_raw_material_id  (raw_material_id)
#
# Foreign Keys
#
#  fk_rails_1c8692e51e  (product_id => products.id)
#  fk_rails_6e1cc92eec  (raw_material_id => raw_materials.id)
#

require 'test_helper'

class ProductIngrediantTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
