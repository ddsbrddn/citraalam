json.extract! lakeside, :id, :organization, :packet, :status, :created_at, :updated_at
json.start lakeside.start_time
json.end lakeside.end_time
json.url lakeside_url(lakeside, format: :html)
