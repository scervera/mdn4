json.extract! resource, :id, :title, :description, :video_url, :created_at, :updated_at
json.url resource_url(resource, format: :json)