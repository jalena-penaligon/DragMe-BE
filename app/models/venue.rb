class Venue < ApplicationRecord
  has_many :shows
  validates :google_id, presence: true, uniqueness: true
end
