# == Schema Information
#
# Table name: cities
#
#  id         :integer          not null, primary key
#  name       :string
#  area_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_cities_on_area_id  (area_id)
#

class City < ActiveRecord::Base
	belongs_to :area
	has_many :clients
end
