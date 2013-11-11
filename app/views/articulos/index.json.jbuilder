json.array!(@articulos) do |articulo|
  json.extract! articulo, :titulo, :contenido, :user_id
  json.url articulo_url(articulo, format: :json)
end
