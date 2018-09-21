json.extract! question, :id, :question_number, :user_a_id, :user_q_id, :delete_flag, :created_at, :updated_at
json.url question_url(question, format: :json)
