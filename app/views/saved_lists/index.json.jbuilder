# Created by Brett Bush
json.array!(@saved_lists) do |saved_list|
  json.extract! saved_list, :id
  json.url saved_list_url(saved_list, format: :json)
end
