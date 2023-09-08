class Image < ApplicationRecord
  belongs_to :corporation
  mount_uploader :image, ImageUploader
end
