# == Schema Information
#
# Table name: vendors
#
#  id         :integer          not null, primary key
#  name       :string
#  company    :string
#  phone      :string
#  mobile     :string
#  address    :string
#  email      :string
#  city       :string
#  state      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  city_id    :integer
#
# Indexes
#
#  index_vendors_on_city_id  (city_id)
#
# Foreign Keys
#
#  fk_rails_155747d9ce  (city_id => cities.id)
#

class Vendor < ActiveRecord::Base

	include PgSearch
	pg_search_scope :search_by_name_phone, :against => [:name, :phone, :company]


	has_many :raw_materials
	has_many :equipments
	belongs_to :city

	validates :name, :company, :mobile, :address, presence: true
end
