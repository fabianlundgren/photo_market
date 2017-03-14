Feature: As a visitor
  in order to purchase an image
  I would like to add images to my shopping cart.

Scenario: I add a image to my shopping cart
  Given I am on the index page
  When I click "add to cart"
  Then I should see "1" image in my shopping cart
