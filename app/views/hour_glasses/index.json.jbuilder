json.array!(@hour_glasses) do |hour_glass|
  json.extract! hour_glass, :id, :name, :price, :description
  json.url hour_glass_url(hour_glass, format: :json)
end
