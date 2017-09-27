json.extract! user_email, :id, :user_id, :email, :is_default, :created_at, :updated_at
json.url user_email_url(user_email, format: :json)
