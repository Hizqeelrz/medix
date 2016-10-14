# == Schema Information
#
# Table name: equipment_categories
#
#  id          :integer          not null, primary key
#  name        :string
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class EquipmentCategory < ActiveRecord::Base
end
