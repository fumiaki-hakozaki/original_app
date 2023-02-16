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

  def self.guest
    find_or_create_by!(email: 'guest10@example.com') do |user|
      user.password = SecureRandom.urlsafe_base64
      user.name = "ゲストユーザー(一般)"
    end
  end

  def self.admin_guest
    find_or_create_by!(email: 'admin_guest@example.com') do |user|
      user.password = SecureRandom.urlsafe_base64
      user.admin = true
      user.name = "ゲストユーザー(管理者)"
    end
  end

end
