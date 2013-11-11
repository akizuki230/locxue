json.array!(@actas) do |acta|
  json.extract! acta, :fecha_reunion, :tipo_reunion, :lugar, :orden_dia, :desarrollo, :tareas, :conclusiones, :user_id
  json.url acta_url(acta, format: :json)
end
