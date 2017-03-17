Feature: As a visitor
  In order to see image exif and a large version of an image
  I would like to be able to click on an image and go to image show page.

  Background:
    Given the following images exist
      | name   | creator | price | print_size | file          |
      | Sunset | John    | 17    | 200x200    | my_sunset.png |
      | Boat   | Alex    | 20    | 200x200    | my_boat.png   |

Scenario: Shows image page if I click on an image
  When I am on the index page
  And I click on "Sunset"
  Then I should see "images#show"
  Then I should see a large image of "Sunset"
  # Then I should see exif data for "Sunset"
