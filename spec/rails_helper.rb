ENV['RAILS_ENV'] ||= 'test'
require 'spec_helper'
require File.expand_path('../../config/environment', __FILE__)
require 'rspec/rails'
require 'database_cleaner'
require 'faker'
require 'capybara/rspec'
require 'support/site_page'
Dir['./spec/support/**/**/*.rb'].sort.each { |f| require f }

ActiveRecord::Migration.maintain_test_schema!

RSpec.configure do |config|
  config.use_transactional_fixtures = false
  config.include FactoryGirl::Syntax::Methods
  FactoryGirl.find_definitions
end

# Database cleaner configuration
RSpec.configure do |config|
  config.before :suite do
    DatabaseCleaner.clean_with :truncation
    DatabaseCleaner.strategy = :truncation
  end
  config.before :example do |example|
    if example.metadata[:js] || example.metadata[:type] == :feature
      DatabaseCleaner.strategy = :deletion
    else
      DatabaseCleaner.start
    end
  end
  config.after :example do
    DatabaseCleaner.clean
  end
end