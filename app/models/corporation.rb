class Corporation < ApplicationRecord
  #アソシエーション(1:多)
  belongs_to :user
  
  mount_uploader :image, ImageUploader
  
end
