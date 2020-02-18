class Room < ApplicationRecord
  belongs_to :building, optional: true
  has_many :images
end
