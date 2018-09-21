class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


  has_many :user_posts, class_name: 'Post', :foreign_key => 'user_id'
  has_many :target_posts, class_name: 'Post', :foreign_key => 'target_id'

end
