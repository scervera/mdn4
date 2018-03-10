json.extract! visitor, :id, :name, :email, :body, :created_at, :updated_at
json.url visitor_url(visitor, format: :json)