json.array!(@recoms) do |recom|
  json.extract! recom, :id, :recomendacion_id, :catereco_id
  json.url recom_url(recom, format: :json)
end
