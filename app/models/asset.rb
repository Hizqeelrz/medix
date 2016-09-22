# == Schema Information
#
# Table name: assets
#
#  id                :integer          not null, primary key
#  name              :string
#  asset_category_id :integer
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#
# Indexes
#
#  index_assets_on_asset_category_id  (asset_category_id)
#
# Foreign Keys
#
#  fk_rails_607ec3a299  (asset_category_id => asset_categories.id)
#

class Asset < ActiveRecord::Base
  belongs_to :asset_category
end
