class Feature < ApplicationRecord
  has_many :factory_features
  has_many :factories, through: :factory_features, source: :factory
end
