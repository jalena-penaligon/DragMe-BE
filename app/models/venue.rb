class Venue < ApplicationRecord
  has_many :shows
  validates :venue_google_id, presence: true, uniqueness: true
end
