# == Schema Information
#
# Table name: areas
#
#  id          :integer          not null, primary key
#  name        :string
#  province_id :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
# Indexes
#
#  index_areas_on_province_id  (province_id)
#

class Area < ActiveRecord::Base
	belongs_to :province
	has_many :cities
end
