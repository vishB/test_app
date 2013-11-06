json.array!(@albums) do |album|
  json.extract! album, :name, :description, :location, :privacy
  json.url album_url(album, format: :json)
end
