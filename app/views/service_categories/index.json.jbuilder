json.array!(@service_categories) do |service_category|
  json.extract! service_category, :id, :title, :description, :visible
  json.url service_category_url(service_category, format: :json)
end
