json.array!(@mbrackets) do |mbracket|
  json.extract! mbracket, :id, :name
  json.url mbracket_url(mbracket, format: :json)
end
