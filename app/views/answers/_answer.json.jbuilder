json.extract! answer, :id, :question_id, :answer, :delete_flag, :created_at, :updated_at
json.url answer_url(answer, format: :json)
