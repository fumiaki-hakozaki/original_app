class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :name, presence: true
  validates :profile, length: { maximum: 250 }
  has_many :favorites, dependent: :destroy
  has_many :favorite_factories, through: :favorites, source: :factory
  has_many :reviews, dependent: :destroy

  mount_uploader :image, ImageUploader
end
