json.extract! booking, :id, :tour_id, :customer, :phone, :email, :adress, :created_at, :updated_at
json.url booking_url(booking, format: :json)
