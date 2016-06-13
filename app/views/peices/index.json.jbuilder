json.array!(@peices) do |peice|
  json.extract! peice, :id, :title, :description, :image_url, :price, :category, :subcategory
  json.url peice_url(peice, format: :json)
end
