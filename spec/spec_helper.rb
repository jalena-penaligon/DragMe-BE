require 'simplecov'
SimpleCov.start do
  add_group 'Models', 'app/models'
  add_group 'Views', 'app/views'
  add_group 'Controllers', 'app/controllers'
  add_filter 'spec'
  add_filter 'config'
end

require 'capybara'


RSpec.configure do |config|

  config.expect_with :rspec do |expectations|

    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end

  config.shared_context_metadata_behavior = :apply_to_host_groups

end
