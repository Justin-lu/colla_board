ENV["RAILS_ENV"] = "test"
require File.expand_path("../../config/environment", __FILE__)
require "rails/test_help"
require 'minitest/autorun'
require "minitest/mock"
require 'ffaker'

DatabaseCleaner.strategy = :transaction

class ActiveSupport::TestCase
  include FactoryGirl::Syntax::Default

  setup do
    DatabaseCleaner.start
  end

  teardown do
    DatabaseCleaner.clean
  end

  def sign_in other_user = nil
    current_user = other_user || user
    session[:user_id] = current_user.id
  end

  def sign_out other_user = nil
    session[:user_id] = nil
  end

  def user
    create(:user)
  end
end
