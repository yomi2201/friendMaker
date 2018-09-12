FactoryBot.define do
  factory :post do
    question { "MyString" }
    answer { "MyString" }
    user_q_id { 1 }
    user_a_id { 1 }
  end
end
