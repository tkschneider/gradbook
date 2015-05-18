json.array!(@searchadmins) do |searchadmin|
  json.extract! searchadmin, :id
  json.url searchadmin_url(searchadmin, format: :json)
end
