When(/^I click on "([^"]*)"$/) do |image_name|
  image = Image.find_by(name: image_name)
  find("img#img_link-#{image.id}").click
end

Then(/^I should see a large image of "([^"]*)"$/) do |image_name|
  expect(page).to have_content image_name
  expect(page).to have_css "img[src*='#{image.file.url}']"
end
