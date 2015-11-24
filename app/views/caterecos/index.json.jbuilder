json.array!(@caterecos) do |catereco|
  json.extract! catereco, :id, :tipo
  json.url catereco_url(catereco, format: :json)
end
