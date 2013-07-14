ENV["RAILS_ENV"] = "test"
require File.expand_path("../../config/environment", __FILE__)
require "rails/test_help"

require 'minitest/autorun'
require "minitest/rails"
require 'minitest/spec'
require 'ffaker'

DatabaseCleaner.strategy = :transaction

class ActiveSupport::TestCase
  extend MiniTest::Spec::DSL # Add some RSpec style helper
  include FactoryGirl::Syntax::Default

  setup do
    DatabaseCleaner.start
  end

  teardown do
    DatabaseCleaner.clean
  end
end
