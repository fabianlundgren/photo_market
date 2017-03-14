Given(/^I am on the index page$/) do
  visit root_path
end

Given(/^the following images exists$/) do |table|
  table.hashes.each do |attr|
    create(:image, attr)
  end
end

Given(/^there are no images in the system$/) do
  Image.destroy_all
end

When(/^I click "([^"]*)"$/) do |button|
  click_link_or_button button
end
