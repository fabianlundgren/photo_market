Feature: Add images to shopping cart
  As a visitor
  in order to purchase an image
  I would like to add images to my shopping cart.

  Background:
    Given the following images exist
      | name   | creator | price | print_size | file          |
      | Sunset | John    | 17    | 200x200    | my_sunset.png |
      | Boat   | Alex    | 20    | 200x200    | my_boat.png   |

  Scenario: I add a image to my shopping cart
    Given I am on the index page
    When I click "Buy" on "Sunset"
    Then I should see "1" image in my shopping cart
    And I should see "Sunset has been added to your order"
    And I should see "You have 1 item in your order."

  Scenario: I add multiple items to shopping_cart
    Given I am on the index page
    And I click "Buy" on "Sunset"
    And I click "Buy" on "Boat"
    Then I should see "2" image in my shopping cart
    And I should see "You have 2 items in your order."
