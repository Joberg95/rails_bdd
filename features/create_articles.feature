Feature: Create articles
  As a publisher
  In order to add relevant content to my news service
  I would like to be able to create articles

  Background:
    Given I visit the page

  Scenario: Successfully create an article [Happy Path]
    When I click on "New Article"
    Then I fill in "Title" with "Learn Rails 5"
    And I fill in "Content" with "Excited about learning a new framework"
    And I click on "Create Article"
    And I should see "Article was successfully created."
    And I should see "Learn Rails 5"
    Then I should see "Excited about learning a new framework"

  # Scenario: Publisher doesn't enter a title for the article [Sad Path]
  #   When I fill in "Content" with "Excited about learning a new framework"
  #   And I click "Create Article" button
  #   Then I should see "Title can't be blank"