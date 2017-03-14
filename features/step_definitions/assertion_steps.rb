Then(/^I should see an image named "([^"]*)"$/) do |image_name|
  within '#images' do
    expect(page).to have_content image_name
  end
end

Then(/^I should( not)? see "([^"]*)"$/) do |negate, content|
  if negate
    expect(page).not_to have_content content
  else
    expect(page).to have_content content
  end
end