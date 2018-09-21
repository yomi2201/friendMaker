FactoryBot.define do
  factory :profile do
    user_id { 1 }
    profile_q_number { 1 }
    profile_a { "MyString" }
    delete_flag { false }
  end
end
