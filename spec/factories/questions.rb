FactoryBot.define do
  factory :question do
    question_number { 1 }
    user_a_id { 1 }
    user_q_id { 1 }
    delete_flag { false }
  end
end
