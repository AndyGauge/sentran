json.extract! product, :id, :model_name, :slug, :category_id, :created_at, :updated_at
json.url product_url(product, format: :json)