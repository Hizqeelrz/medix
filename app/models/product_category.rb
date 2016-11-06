# == Schema Information
#
# Table name: product_categories
#
#  id          :integer          not null, primary key
#  name        :string
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class ProductCategory < ActiveRecord::Base
	has_many :products
end
