class Service < ApplicationRecord
  belongs_to :factory

  validates :service_name, presence: true
  validates :price, presence: true, numericality: { only_integer: true, greater_than: 0 }
end
