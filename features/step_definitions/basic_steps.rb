Given(/^I am on the index page$/) do
  visit root_path
end

Given(/^the following images exist$/) do |table|
  table.hashes.each do |attr|
    create(:image,
           attr.except('file')
               .merge(file: File.new("spec/images/#{attr[:file]}"))
    )
  end
end

Given(/^there are no images in the system$/) do
  Image.destroy_all
end

Given(/^I am on the registration page$/) do
   visit new_user_registration_path
end

When(/^I fill in "([^"]*)" with "([^"]*)"$/) do |field, content|
  fill_in field, with: content
end

Then(/^I click "([^"]*)"$/) do |button|
  click_link_or_button button
end


Then(/^show me the page$/) do
  save_and_open_page
end
