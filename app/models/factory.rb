class Factory < ApplicationRecord
  has_many :favorites, dependent: :destroy
  has_many :favorite_users, through: :favorites, source: :user
  has_many :reviews, dependent: :destroy
  has_many :services, dependent: :destroy
  has_many :factory_features, dependent: :destroy
  has_many :features, through: :factory_features, source: :feature

  mount_uploader :image, ImageUploader

  validates :factory_name, presence: true
  validates :address, presence: true
  validates :summary, length: { maximum: 255 }

end
