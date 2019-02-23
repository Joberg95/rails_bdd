Feature: User can comment on an article

    As a user
    In order to share my views
    I would like to be able to comment on an article

    Background:
        Given the following articles exists in the system
        | title             | content                                |
        | Learn Rails 5     | Build awesome rails applications       |

    Scenario: Users comment is visible on articles
        Given I visit the landing page
        And I click on "Learning Rails 5"
        When I fill in "Email" with "test@test.com"
        And I fill in "Comment" with "test!"
        Then show me the page
        And I click on "Add comment"
        Then I should be on "Learning rails 5" page
        And I should see "Your comment was successfully added"