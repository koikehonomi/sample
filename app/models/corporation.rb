class Corporation < ApplicationRecord
  #アソシエーション(1:多)
  belongs_to :user
  has_many :images, dependent: :destroy
  
  
end
