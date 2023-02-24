class Review < ApplicationRecord
  belongs_to :user
  belongs_to :factory
  validates :content, presence: true, length: { maximum: 255 }
  mount_uploader :image, ImageUploader
end
