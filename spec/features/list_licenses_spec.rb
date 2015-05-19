require 'rails_helper'

RSpec.feature 'User can ' do
  scenario 'add a license' do
    license = build(:license)
    
    license_page = NewLicensePage.new
    license_page.visit.create(license)

    expect(page).to have_content 'License was successfully created'
  end
end