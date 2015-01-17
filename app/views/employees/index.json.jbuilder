json.array!(@employees) do |employee|
  json.extract! employee, :id, :name, :title, :thumb, :description, :content, :weight, :isHomePage, :visible
  json.url employee_url(employee, format: :json)
end
