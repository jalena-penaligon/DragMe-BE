require 'rails_helper'

RSpec.describe Show, type: :model do

  describe 'relationships' do
    it { should have_many :performers }
    it { should belong_to :venue }
  end

end
