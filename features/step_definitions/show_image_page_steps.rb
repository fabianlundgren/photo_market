When(/^I click on "([^"]*)"$/) do |image_name|
  image = Image.find_by(name: image_name)
  find("#img_link-#{image.id}").click
end

Then(/^I should see a large image named "([^"]*)"$/) do |image_name|
  image = Image.find_by(name: image_name)
  img_box = page.first("img[src*='#{image.file.url}']")
  expect(page).to have_css "img[src*='#{image.file.url}']"
  expect(img_box[:width]).to eq(50)
end
