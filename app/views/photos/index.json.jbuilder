json.array!(@photos) do |photo|
  json.extract! photo, :id, :m_name, :is_cover, :category_id, :display_number, :photoable_id, :photoable_type, :image_uid, :image_name
  json.url photo_url(photo, format: :json)
end
