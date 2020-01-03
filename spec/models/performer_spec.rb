require 'rails_helper'

RSpec.describe Performer, type: :model do

  describe 'relationships' do
    it { should have_many :shows }
  end

  describe 'validations' do
    it { should validate_presence_of :name }
    it { should validate_uniqueness_of :name }
    it { should validate_uniqueness_of :instagram_token }
  end

end
