json.extract! booking, :id, :unit, :packet, :start_date, :end_date, :total_participant, :status, :note, :created_at, :updated_at
json.url booking_url(booking, format: :json)
