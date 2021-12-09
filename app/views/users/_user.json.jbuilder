json.extract! user, :id, :nombre, :apellido1, :apellido2, :rut, :correo, :clave, :role_id, :fee_id, :created_at, :updated_at
json.url user_url(user, format: :json)
