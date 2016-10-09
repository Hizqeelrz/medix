# == Schema Information
#
# Table name: equipment
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Equipment < ActiveRecord::Base
	belongs_to :equipment_categories
	belongs_to :vendors
end
