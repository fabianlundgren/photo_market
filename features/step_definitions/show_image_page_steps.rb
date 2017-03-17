When(/^I click on "([^"]*)"$/) do |image_name|
  image = Image.find_by(name: image_name)
  find("img#img_link-#{image.id}").click
  # capybara click image link
end

Then(/^I should see a large image of "([^"]*)"$/) do |image_name|
  image = Image.find_by(name: image_name)
  img_box = page.first("img[src*='#{image.file.url}']")
  expect(page).to have_content image_name
  expect(page).to have_css "img[src*='#{image.file.url}']"
  binding.pry
  # expect(img_box[:width]).to eq(50)
  # capybara check image width
end
