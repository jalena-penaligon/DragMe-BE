class Show < ApplicationRecord
  belongs_to :venue
  has_many :show_performers
  has_many :performers, through: :show_performers
end
