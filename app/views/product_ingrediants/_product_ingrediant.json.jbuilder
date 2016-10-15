json.extract! product_ingrediant, :id, :raw_material_id, :product_id, :unit, :quantity, :created_at, :updated_at
json.url product_ingrediant_url(product_ingrediant, format: :json)