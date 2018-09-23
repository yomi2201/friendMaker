json.extract! profile, :id, :user_id, :profile_q_number, :profile_a, :delete_flag, :created_at, :updated_at
json.url profile_url(profile, format: :json)
