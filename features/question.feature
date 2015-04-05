Feature: Questions and question pages
As an author
so that I can manage my questions
I want to add a new question and upload anwser files

Scenario: Add a new question
  Given I'm on the question manage page
  When I add a new question
  Then I should be able to see the new question's page

Scenario: Add an anwser
  Given I'm on the question manage page
  When I add a new anwser
  Then I should see a button to choose my anwser file

Scenario: Add a question without content
  Given I'm on the question manage page
  When I add a new question without content
  Then I should see some errors on the page
