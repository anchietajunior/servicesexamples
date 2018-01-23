json.extract! service_invoice, :id, :payment_id, :status, :created_at, :updated_at
json.url service_invoice_url(service_invoice, format: :json)
