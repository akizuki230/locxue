json.array!(@eventos) do |evento|
  json.extract! evento, :titulo, :lugar, :fecha, :descripcion, :imagen
  json.url evento_url(evento, format: :json)
end
