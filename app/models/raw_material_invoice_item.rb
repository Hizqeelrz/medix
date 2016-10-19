# == Schema Information
#
# Table name: raw_material_invoice_items
#
#  id                      :integer          not null, primary key
#  quantity                :integer
#  unit                    :string
#  price                   :integer
#  raw_material_id         :integer
#  raw_material_invoice_id :integer
#  created_at              :datetime         not null
#  updated_at              :datetime         not null
#
# Indexes
#
#  index_raw_material_invoice_items_on_raw_material_id          (raw_material_id)
#  index_raw_material_invoice_items_on_raw_material_invoice_id  (raw_material_invoice_id)
#
# Foreign Keys
#
#  fk_rails_30604e85e0  (raw_material_id => raw_materials.id)
#  fk_rails_4046762591  (raw_material_invoice_id => raw_material_invoices.id)
#

class RawMaterialInvoiceItem < ActiveRecord::Base
  belongs_to :raw_material
  belongs_to :raw_material_invoice
end
