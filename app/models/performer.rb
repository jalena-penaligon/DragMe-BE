class Performer < ApplicationRecord
  validates :instagram_token, uniqueness: true, allow_nil: true
  validates :name, presence: true, uniqueness: true
  has_many :show_performers
  has_many :shows, through: :show_performers
end
