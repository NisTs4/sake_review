json.array!(@sakes) do |sake|
  json.extract! sake, :id, :name, :description, :size, :maker, :rating
  json.url sake_url(sake, format: :json)
end
