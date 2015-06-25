require 'test_helper'

feature 'user signs up' do
  scenario 'should allow user to sign up' do
    visit '/'
    click_on 'Sign Up'
    fill_in 'Email', with: 'test@example.com'
    fill_in 'Password', with: '123456'
    fill_in 'Password confirmation', with: '123456'
    click_on 'Create User'
    page.text.must_include 'Thank you for signing up!'
    User.count.must_equal 1
  end
end
