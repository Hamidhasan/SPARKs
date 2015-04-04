Feature: papers and paper page

  As an author
  so that I can manage my papers
  I want to add, edit or delete papers in the list

  Scenario: Add a paper title
    Given I'm on the paper creation page
    When I add a new title
    Then I should be able to see the new paper's page

  Scenario: Upload a paper with title
    Given I'm on the paper creation page
    When I add a new title and upload a new file
    Then I should be able to see the new paper's being completed
