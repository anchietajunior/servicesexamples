json.extract! payment, :id, :amount, :description, :quantity, :created_at, :updated_at
json.url payment_url(payment, format: :json)
