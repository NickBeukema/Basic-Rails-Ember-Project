Given(/^I visit "(.*?)"$/) do |path|
  visit path
end

Then(/^I should see the login screen$/) do
  expect(page).to have_content('Login')
  expect(page).to have_content('Password')
end

Given(/^I login as a user$/) do
  user = Fabricate(:user)
  step %|I visit "/login"|

  fill_in("identification", with: user.email)
  fill_in("password", with: 'abc123')

  em { click_button("Login") }
end

When(/^I logout$/) do
  click_link("Logout")
end

Then(/^I should see the dashboard$/) do
  expect(page).to have_content('Protected Dashboard')
end

Then(/^I should see my email address in the navbar$/) do
  user = User.first
  expect(page).to have_css('.navbar', text: user.email)
end

def em(&blk)
  wait_for_ajax_completion
  wait_for_ember_run_loop_to_complete
  blk.call
  wait_for_ajax_completion
  wait_for_ember_run_loop_to_complete
end
