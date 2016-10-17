# == Schema Information
#
# Table name: orders
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  client_id  :integer
#
# Indexes
#
#  index_orders_on_client_id  (client_id)
#
# Foreign Keys
#
#  fk_rails_5c8e53c896  (client_id => clients.id)
#

class Order < ActiveRecord::Base
end
