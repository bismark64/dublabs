Feature: Public Feed
  
  The app should display a collection of small images with pagination and provide the 
  ability to display a larger version of any image once I click on it.

  Background:
    Given I want to see the app working
    When I visit the homepage 

  @main
  Scenario: Watching the public feed
    Then I should see the flickr public photo feed
    And I should see a paginator

  @javascript @lightbox
  Scenario: Watching larger image
    And I click an image
    Then I should see a larger version of the image

  @tags
  Scenario Outline: Filtering by tagging
    And I filter with the tag "<tag>"
    Then I should see "<count>" items with that tag

  Examples:
  | tag   | count |
  | art   | 15    |
  | beach | 15    |
  | ruby  | 15    |