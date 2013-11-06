json.array!(@details) do |detail|
  json.extract! detail, :name, :address
  json.url detail_url(detail, format: :json)
end
