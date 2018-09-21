FactoryBot.define do
  factory :answer do
    question_id { 1 }
    answer { "MyString" }
    delete_flag { false }
  end
end
