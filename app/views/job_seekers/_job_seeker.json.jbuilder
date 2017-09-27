json.extract! job_seeker, :id, :user, :skills, :expected_sal, :expected_locations, :created_at, :updated_at
json.url job_seeker_url(job_seeker, format: :json)
