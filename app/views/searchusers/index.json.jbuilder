json.array!(@searchusers) do |searchuser|
  json.extract! searchuser, :id
  json.url searchuser_url(searchuser, format: :json)
end
