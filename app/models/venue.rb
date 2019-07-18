class Venue < ApplicationRecord
  validates :google_id, presence: true, uniqueness: true
end
