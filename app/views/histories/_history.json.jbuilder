json.extract! history, :id, :history_type, :title, :start_time, :end_time, :job_seeker_id, :created_at, :updated_at
json.url history_url(history, format: :json)
