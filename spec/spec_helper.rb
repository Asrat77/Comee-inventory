# frozen_string_literal: true

require 'support/models/shared_examples'
require 'support/requests/shared_requests'
# require_relative 'custom_formatter.rb'

RSpec.configure do |config|
  # config.add_formatter(CustomFormatter)
  config.formatter = RSpec::Core::Formatters::DocumentationFormatter
  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end
  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end

  config.shared_context_metadata_behavior = :apply_to_host_groups
  config.profile_examples = false
end
