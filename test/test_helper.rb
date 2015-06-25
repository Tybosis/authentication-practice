ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'
require "minitest/rails"
require "minitest/rails/capybara"
require "minitest/pride"

class CapybaraTestCase < MiniTest::Spec
  include Capybara::DSL
  register_spec_type(/page$/, self)
end

class ActiveSupport::TestCase
  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  fixtures :all

  def sign_up
    visit '/'
    click_on 'Sign Up'
    fill_in 'Email', with: 'test@example.com'
    fill_in 'Password', with: '123456'
    fill_in 'Password confirmation', with: '123456'
    click_on 'Create User'
  end

  # Add more helper methods to be used by all tests here...
end
