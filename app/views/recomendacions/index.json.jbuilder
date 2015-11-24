json.array!(@recomendacions) do |recomendacion|
  json.extract! recomendacion, :id, :tipo, :taller, :direccion, :comuna, :ciudad, :comentario, :calificacion, :usuario_id
  json.url recomendacion_url(recomendacion, format: :json)
end
