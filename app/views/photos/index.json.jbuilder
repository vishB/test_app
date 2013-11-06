json.array!(@photos) do |photo|
  json.extract! photo, :album_id, :name, :description, :location, :privacy, :binary_data
  json.url photo_url(photo, format: :json)
end
