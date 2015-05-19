class License < ActiveRecord::Base
  validates :key, uniqueness: true
end
