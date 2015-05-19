class License < ActiveRecord::Base
  validates :key, uniqueness: true

  def self.valid
    all
  end
end
