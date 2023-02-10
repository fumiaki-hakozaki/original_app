class Feature < ApplicationRecord
  has_many :factories, through: :factory_features, source: :factory
  has_many :factory_features
end
