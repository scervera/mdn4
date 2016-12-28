json.extract! event, :id, :title, :event_date, :event_time, :location, :address1, :address2, :city, :state, :zipcode, :priority, :created_at, :updated_at
json.url event_url(event, format: :json)