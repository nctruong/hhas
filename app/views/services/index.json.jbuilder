json.array!(@services) do |service|
  json.extract! service, :id, :title, :description, :content, :thumb, :oldprice, :newprice, :isHomePage, :visible
  json.url service_url(service, format: :json)
end
