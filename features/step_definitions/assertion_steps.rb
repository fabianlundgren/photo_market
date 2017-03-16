Then(/^I should see an image named "([^"]*)"$/) do |image_name|
  image = Image.find_by(name: image_name)
  within '#images' do
    within ".image-#{image.id}" do
      expect(page).to have_content image_name
      expect(page).to have_css "img[src*='#{image.file.url}']"
    end
  end
end

Then(/^I should( not)? see "([^"]*)"$/) do |negate, content|
  if negate
    expect(page).not_to have_content content
  else
    expect(page).to have_content content
  end
end
