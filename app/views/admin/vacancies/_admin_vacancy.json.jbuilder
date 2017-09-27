json.extract! admin_vacancy, :id, :job_title, :job_summary, :job_type, :min_sal, :max_sal, :deal_line, :expected_skills, :locations, :created_at, :updated_at
json.url admin_vacancy_url(admin_vacancy, format: :json)
