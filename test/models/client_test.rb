# == Schema Information
#
# Table name: clients
#
#  id          :integer          not null, primary key
#  name        :string
#  phone       :string
#  email       :string
#  website     :string
#  company     :string
#  address     :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  province_id :integer
#  area_id     :integer
#  city_id     :integer
#
# Indexes
#
#  index_clients_on_area_id      (area_id)
#  index_clients_on_city_id      (city_id)
#  index_clients_on_province_id  (province_id)
#
# Foreign Keys
#
#  fk_rails_6b5e4c0738  (city_id => cities.id)
#  fk_rails_8e28668c0d  (province_id => provinces.id)
#  fk_rails_908e9848c9  (area_id => areas.id)
#

require 'test_helper'

class ClientTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
