# == Schema Information
#
# Table name: raw_materials
#
#  id                       :integer          not null, primary key
#  name                     :string
#  quantity                 :string
#  price                    :string
#  raw_material_category_id :integer
#  created_at               :datetime         not null
#  updated_at               :datetime         not null
#  vendor_id                :integer
#
# Indexes
#
#  index_raw_materials_on_raw_material_category_id  (raw_material_category_id)
#  index_raw_materials_on_vendor_id                 (vendor_id)
#
# Foreign Keys
#
#  fk_rails_9d0711621f  (raw_material_category_id => raw_material_categories.id)
#  fk_rails_d527181cc2  (vendor_id => vendors.id)
#

class RawMaterial < ActiveRecord::Base
  belongs_to :vendor
  belongs_to :raw_material_category
  has_many :product_ingrediants
end
