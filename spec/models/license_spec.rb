require 'rails_helper'

RSpec.describe License, type: :model do
  describe '.create' do
    it 'returns a valid object' do

      license = create(:license)

      expect(license).to be_valid 
    end
  end
end
