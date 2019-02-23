Feature: User can comment on an article

    As a user
    In order to share my views
    I would like to be able to comment on an article

    Background: 
        Given the following articles exists
        | title                | content                          |
        | A breaking news item | Some really breaking action      |
        | Learn Rails 5        | Build awesome rails applications |

        And I visit the page

    Scenario: Vistior comments on article
        Given I am reading reading the article named "A breaking new item"
        And I fill in "Comment" with "This is awesome!"
        And I fill in "Your name" with "Berg"
        And I click on "Post Comment"
        Then I should see "This is awesome!"