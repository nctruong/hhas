json.array!(@articles) do |article|
  json.extract! article, :id, :title, :description, :content, :thumb, :publishdate, :article_category_id, :visible, :isHomePage
  json.url article_url(article, format: :json)
end
