# == Schema Information
#
# Table name: products
#
#  id                  :integer          not null, primary key
#  name                :string
#  product_category_id :integer
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#
# Indexes
#
#  index_products_on_product_category_id  (product_category_id)
#
# Foreign Keys
#
#  fk_rails_efe167855e  (product_category_id => product_categories.id)
#

class Product < ActiveRecord::Base
  belongs_to :product_category
  has_many :product_ingrediants
end
