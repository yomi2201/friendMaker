json.extract! post, :id, :question, :answer, :user_q_id, :user_a_id, :created_at, :updated_at
json.url post_url(post, format: :json)
