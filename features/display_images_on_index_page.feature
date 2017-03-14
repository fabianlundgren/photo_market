Feature: Add images to the index page
  As a visitor
  In order to chose from a variety of images
  I would like to see a selection of images on index page

  Background:
    Given the following images exists
      | name   | creator | price | print_size |
      | Sunset | John    | 17    | 200x200    |
      | Boat   | Alex    | 20    | 200x200    |

  Scenario: Shows images if there are images in the system
    When I am on the index page
    Then I should see an image named "Sunset"
    And I should see an image named "Boat"
    And I should not see "No images yet!"

  Scenario: Shows message if there are no images in the system
    Given there are no images in the system
    And I am on the index page
    Then I should see "No images yet!"
