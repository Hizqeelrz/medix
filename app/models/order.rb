# == Schema Information
#
# Table name: orders
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  client_id  :integer
#  user_id    :integer
#  lat        :float
#  lon        :float
#
# Indexes
#
#  index_orders_on_client_id  (client_id)
#  index_orders_on_user_id    (user_id)
#
# Foreign Keys
#
#  fk_rails_5c8e53c896  (client_id => clients.id)
#  fk_rails_f868b47f6a  (user_id => users.id)
#

class Order < ActiveRecord::Base

	belongs_to :client
	belongs_to :user

	has_many :order_products
	has_many :products, through: :order_products

	accepts_nested_attributes_for :order_products, reject_if: :all_blank, allow_destroy: true
end
