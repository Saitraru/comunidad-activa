json.extract! document, :id, :folio, :document_type_id, :expense_id, :supplier_id, :created_at, :updated_at
json.url document_url(document, format: :json)
