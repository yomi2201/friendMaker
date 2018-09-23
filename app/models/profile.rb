class Profile < ApplicationRecord
    belongs_to :user
    has_many :original_questions
end
