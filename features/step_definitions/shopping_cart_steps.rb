Then(/^I should see "([^"]*)" image in my shopping cart$/) do |number|
  cart = ShoppingCart.first
  expect(cart.shopping_cart_items.count).to eq number.to_i
end
