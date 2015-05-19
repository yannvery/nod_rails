class NewLicensePage < SitePage

  def path
    new_license_path
  end

  def create(license)
    fill_in :license_product, :with => license.product
    fill_in :license_key, :with => license.key
    click_button 'Create License'
  end
end