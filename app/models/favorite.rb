class Favorite < ApplicationRecord
  belongs_to :user
  belongs_to :factory
end
