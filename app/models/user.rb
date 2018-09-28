class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


  has_many :q_user_questions, class_name: 'Question', :foreign_key => 'user_q_id'
  has_many :a_user_questions, class_name: 'Question', :foreign_key => 'user_a_id'
  has_many :profiles, :foreign_key => 'user_id'


end
