json.extract! job, :id, :title, :description, :volunteer, :visible, :created_at, :updated_at
json.url job_url(job, format: :json)