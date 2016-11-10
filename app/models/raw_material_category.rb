# == Schema Information
#
# Table name: raw_material_categories
#
#  id          :integer          not null, primary key
#  name        :string
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class RawMaterialCategory < ActiveRecord::Base
	has_many :raw_materials

end
