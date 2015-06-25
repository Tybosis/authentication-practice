require 'test_helper'

feature 'log out' do
  scenario 'logged in user should be able to log out' do
    sign_up
    visit '/'
    click_on 'Log Out'
    page.text.must_include 'Logged Out!'
    page.text.wont_include 'Logged in as test@example.com'
  end
end
