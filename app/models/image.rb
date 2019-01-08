class Image < ApplicationRecord
  mount_uploader :image, ImageUploader
  validates :image, presence: true
  validates :autor, presence: true
end
