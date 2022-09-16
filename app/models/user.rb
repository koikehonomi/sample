class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  # アソシエーション(1:多)
  has_many :corporations, dependent: :destroy 
  validates :username, presence: true  #usernameは必ず入力。プロフィールは２００文字以内
  validates :profile, length: { maximum: 200 } 
  
end
