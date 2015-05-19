json.array!(@licenses) do |license|
  json.extract! license, :id, :product, :key
  json.url license_url(license, format: :json)
end
