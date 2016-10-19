# == Schema Information
#
# Table name: raw_material_invoices
#
#  id         :integer          not null, primary key
#  vendor_id  :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_raw_material_invoices_on_vendor_id  (vendor_id)
#
# Foreign Keys
#
#  fk_rails_d01874d9c2  (vendor_id => vendors.id)
#

class RawMaterialInvoice < ActiveRecord::Base
  belongs_to :vendor
end
