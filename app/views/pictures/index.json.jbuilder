json.array!(@pictures) do |picture|
  json.extract! picture, :id, :title, :description, :file, :album_id, :visible
  json.url picture_url(picture, format: :json)
end
