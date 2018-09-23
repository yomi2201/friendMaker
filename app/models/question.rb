class Question < ApplicationRecord
    belongs_to :question_user, class_name: 'User', :foreign_key => 'user_q_id'
    belongs_to :answer_user, class_name: 'User', :foreign_key => 'user_a_id'
    has_one :answer
    has_many :original_questions

    Question.joins(:answer)
end
