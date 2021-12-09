json.extract! expense, :id, :fecha_gasto, :monto, :motive_id, :month_id, :year_id, :created_at, :updated_at
json.url expense_url(expense, format: :json)
