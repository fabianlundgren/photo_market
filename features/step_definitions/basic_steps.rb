Given(/^I am on the index page$/) do
  visit root_path
end

Then(/^I should see "([^"]*)"$/) do |content|
  expect(page).to have_content content
end

Given(/^I am on the registration page$/) do
   visit new_user_registration_path
end

When(/^I fill in "([^"]*)" with "([^"]*)"$/) do |field, content|
  fill_in field, with: content
end

Then(/^i click "([^"]*)"$/) do |button|
  click_link_or_button button
end
