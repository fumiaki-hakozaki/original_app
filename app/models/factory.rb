class Factory < ApplicationRecord
  has_many :favorites, dependent: :destroy
  has_many :favorite_users, through: :favorites, source: :user
  has_many :reviews
  has_many :services
  has_many :factory_features
  has_many :features, through: :factory_features, source: :feature
end
