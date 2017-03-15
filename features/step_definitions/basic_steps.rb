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

Then(/^show me the page$/) do
  save_and_open_page
end