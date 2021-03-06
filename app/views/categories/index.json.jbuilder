json.array!(@categories) do |category|
  json.extract! category, :id, :name, :status, :parent_id, :user_id
  json.url category_url(category, format: :json)
end
