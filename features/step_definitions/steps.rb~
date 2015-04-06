Given(/^I'm on the author creation page$/) do
  visit(new_author_path)
end

When(/^I add new author$/) do
  fill_in 'Name', :with => "test0"
  fill_in 'Email', :with => "test0@upenn.com"
  fill_in 'Password', :with => "000000", :match => :prefer_exact
  fill_in 'Password confirmation', :with => "000000", :match => :prefer_exact
  click_button 'Create'
end

Then(/^I should be able to see the new author's page$/) do
  assert page.has_content?("Author was successfully created!")
end

Given(/^I'm on the signin page$/) do
  visit(signin_path)
end

When(/^I login by using right email and password$/) do
  fill_in 'Email', :with => "test0@upenn.com"
  fill_in 'Password', :with => "000000"
  click_button 'Log in'
end

Then(/^I should be able to see my page$/) do
  page.has_content?("Homepage")
end

Given(/^I'm on the logout page$/) do
  visit(signout_path)
end

Then(/^I should be able to go back to signin page$/) do
  page.has_content?("Sign In")
end

When(/^I login by using using wrong email or password$/) do
  fill_in 'Email', :with => "test0@upenn.com"
  fill_in 'Password', :with => "999999"
  click_button 'Log in'
end

Then(/^I should not be able to see my page$/) do
  assert page.has_content?("Invalid email/password combination!")
end

Given(/^I'm on the paper creation page$/) do
  visit(new_paper_path)
end

When(/^I add a new title$/) do
  fill_in 'Title', :with => "Scientific Research Sharing"
  click_button 'Create Paper'
end

Then(/^I should be able to see the new paper's page$/) do
  assert page.has_content?("Paper was successfully created")
end

When(/^I add a new title and upload a new file$/) do
  # pending # express the regexp above with the code you wish you had
  fill_in 'Title', :with => "Research paper"
  #click_button 'Browse'
  #click_button 'Cancel'
  #click_button 'Open'
  click_button 'Create Paper'
end

Then(/^I should be able to see the new paper's being completed$/) do
  assert page.has_content?("Paper was successfully created")
  # pending # express the regexp above with the code you wish you had
end

#question steps
Given(/^I'm on the question manage page$/) do
visit(new_question_path)
end
When(/^I add a new question$/) do
fill_in 'Id', :with => "3"
fill_in 'Content', :with => "why the result doesn't match?"
click_button 'Create Question'
end
Then(/^I should be able to see the new question's page$/) do  
assert page.has_content?("Question was successfully created")
end


When (/^I add a new anwser$/) do
assert page.has_css?('input')

end
Then (/^I should see a button to choose my anwser file$/) do
 assert page.has_selector?("input")
end

When(/^I add a new question without content$/) do
fill_in 'Id', :with => "3"
click_button 'Create Question'
end
Then(/^I should see some errors on the page$/) do
assert page.has_css?('div.field_with_errors')
end
#question end

