json.array!(@products) do |product|
  json.extract! product, :id, :name, :description, :status, :price, :sale_price, :weight, :length, :width, :height, :attributes, :visibility, :parent_id, :category_id, :user_id
  json.url product_url(product, format: :json)
end
