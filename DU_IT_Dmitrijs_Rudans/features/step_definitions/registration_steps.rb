Then(/^User on the registration page$/) do
  @pages.registration_page.visit
end

When('User fill the first name input field with {string}') do |first_name|
  @pages.registration_page.fill_first_name(first_name)
end

When('User fill the last name input field with {string}') do |last_name|
  @pages.registration_page.fill_last_name(last_name)
end

When('User add an email in the email input field') do
  generated_email = Time.now.strftime('%H%M%S%L') + '@email.com'
  @pages.registration_page.fill_email(generated_email)
 end

 When('User fill the Adress1 input field with {string}') do |adress1|
  @pages.registration_page.fill_adress1(adress1)
end

Then(/^User select "(.*)" in the country dropdown$/) do |value|
  @pages.registration_page.select_contry(value)
 end

 Then(/^User select "(.*)" in the region dropdown$/) do |value|
  @pages.registration_page.select_region(value)
 end
 
 When('User fill the city input field with {string}') do |city|
  @pages.registration_page.fill_city(city)
end

When('User fill the ZIP code input field with {string}') do |postcode|
  @pages.registration_page.fill_ZIP_code(postcode)
end

When('User fill the login input field') do
  generated_login = Time.now.strftime('%H%M%S%L') + 'dot'
  @pages.registration_page.fill_login(generated_login)
 end
 
 When('User fill the password input field with {string}') do |pasw|
  @pages.registration_page.fill_pasw(pasw)
end

When('User fill the password confirm input field with {string}') do |pasw|
  @pages.registration_page.fill_pasw_confirm(pasw)
end

When(/^User select newsletter subscription "(1|0)"$/) do |radio_btn|
  @pages.registration_page.select_subscription_radio_btn(radio_btn)
end

When(/^User select privacy policy$/) do 
  @pages.registration_page.select_privacy_checkbox 
end

When('I press Continue') do 
  @pages.registration_page.continue
end

Then('I check that I created new account') do
  expect(@pages.registration_page.registration_confirmation).to eq('Your Account Has Been Created!')
end