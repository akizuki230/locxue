json.array!(@integrantes) do |integrante|
  json.extract! integrante, :nombre, :primer_apellido, :segundo_apellido, :perfil, :twitter, :telefono, :imagen, :widget, :user_id
  json.url integrante_url(integrante, format: :json)
end
