require 'rails_helper'

RSpec.describe License, type: :model do
  describe '.create' do
    it 'returns a valid object' do

      license = License.create( 
        product: 'MS Word', 
        key: 'XXXX-XXX-XXX-XXXX'
      )
      
      expect(license).to be_valid 
    end
  end
end
