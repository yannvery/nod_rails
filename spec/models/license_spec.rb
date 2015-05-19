require 'rails_helper'

RSpec.describe License, type: :model do
  describe '.create' do
    it 'returns a valid object' do

      license = create(:license)

      expect(license).to be_valid 
    end
  end
  
  describe '.validated' do
    it 'returns all valid licenses' do
      FactoryGirl.create_list(:license, 3)
      expect(License.valid.count).to eq(3)
    end
  end
end
