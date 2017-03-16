Then(/^I should see "([^"]*)" image in my shopping cart$/) do |number|
  cart = ShoppingCart.first
  expect(cart.shopping_cart_items.count).to eq number.to_i
end

When(/^I click "([^"]*)" on "([^"]*)"$/) do |element, image_name|
  image = Image.find_by(name: image_name)
  within ".image-#{image.id}" do
    click_link_or_button element
  end
end