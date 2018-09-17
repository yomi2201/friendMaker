class Post < ApplicationRecord
    belongs_to :user, class_name: 'User', :foreign_key => 'user_id'
    belongs_to :target, class_name: 'User', :foreign_key => 'target_id'
end
