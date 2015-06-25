require 'test_helper'

feature 'user sign in' do
  scenario 'user who has already signed up should be able to sign in' do
    sign_up
    click_on 'Log Out'
    page.text.wont_include 'Logged in as test@example.com'
    visit '/'
    click_on 'Log In'
    fill_in 'Email', with: 'test@example.com'
    fill_in 'Password', with: '123456'
    click_on 'Log In'
    page.text.must_include 'Logged In!'
    page.text.must_include 'Logged in as test@example.com'
  end
end
