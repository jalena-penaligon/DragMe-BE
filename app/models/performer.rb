class Performer < ApplicationRecord
  validates :instagram_token, presence: true, uniqueness: true
end
