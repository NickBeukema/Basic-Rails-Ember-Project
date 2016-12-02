Given(/^I visit "(.*?)"$/) do |path|
  visit path
end

Then(/^I should see the login screen$/) do
  expect(page).to have_content('Login')
  expect(page).to have_content('Password')
end

Given(/^I login as a user$/) do
  user = User.create(email: 'example.user@gmail.com', password: 'abc123')
  step %|I visit "/login"|

  fill_in("identification", with: user.email)
  fill_in("password", with: 'abc123')

  click_button("Login")
  sleep 3
end

When(/^I logout$/) do
  click_link("Logout")
end

Then(/^I should see the dashboard$/) do
  expect(page).to have_content('Protected Dashboard')
end
