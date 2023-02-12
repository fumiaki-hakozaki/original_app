class Review < ApplicationRecord
  belongs_to :user
  belongs_to :factory
  validates :content, presence: true
  mount_uploader :image, ImageUploader
end
