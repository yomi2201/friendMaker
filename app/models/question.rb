class Question < ApplicationRecord
    belongs_to :user_question, class_name: 'User', :foreign_key => 'user_q_id'
    belongs_to :user_answer, class_name: 'User', :foreign_key => 'user_a_id'
    has_one :answer
    has_many :original_questions
end
