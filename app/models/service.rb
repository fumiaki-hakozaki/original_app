class Service < ApplicationRecord
  belongs_to :factory

  validates :service_name, presence: true
end
