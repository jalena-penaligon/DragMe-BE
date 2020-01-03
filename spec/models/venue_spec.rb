require 'rails_helper'

RSpec.describe Venue, type: :model do

  describe 'relationships' do
    it { should have_many :shows }
  end

  describe 'validations' do
    it { should validate_presence_of :venue_google_id }
    it { should validate_uniqueness_of :venue_google_id }
  end
end
