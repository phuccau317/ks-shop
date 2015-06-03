json.array!(@users) do |user|
  json.extract! user, :id, :m_username, :m_first_name, :m_last_name, :email, :m_product_limit, :m_user_type
  json.url user_url(user, format: :json)
end
