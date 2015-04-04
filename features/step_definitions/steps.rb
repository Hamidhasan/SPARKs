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