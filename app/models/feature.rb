class Feature < ApplicationRecord
  has_many :factory_features
  has_many :factories, through: :factory_features, source: :factory
  validates :feature_name, presence: true
end
