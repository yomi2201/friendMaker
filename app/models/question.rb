class Question < ApplicationRecord
    belongs_to :q_user, class_name: 'User', :foreign_key => 'user_q_id'
    belongs_to :a_user, class_name: 'User', :foreign_key => 'user_a_id'
    has_one :answer, dependent: :destroy
    accepts_nested_attributes_for :answer
    has_one :original, dependent: :destroy
    accepts_nested_attributes_for :original


    enum q_number:
        %i(質問を選びましょう
            好きな食べ物なんですか
            好きな色はなんですか？
            海派？それとも山派？
            猫が好きですよね？
            今日は何の日ですか？
            私と遊びに行きませんか？
            好きな映画は何ですか？
            小学校の思い出を教えてください。
            尊敬している人は誰ですか？
            愛読書は何ですか？
        )

end
