class RegistrationForm

  include Capybara::DSL

  def initialize
    @first_name_input = Element.new(:xpath, '//*[@id="AccountFrm_firstname"]')
    @last_name_input = Element.new(:xpath, '//*[@id="AccountFrm_lastname"]')
    @email_input = Element.new(:xpath, '//*[@id="AccountFrm_email"]')
    @adress1_input = Element.new(:xpath, '//*[@id="AccountFrm_address_1"]')
    @country_drop = Element.new(:xpath, '//*[@id="AccountFrm_country_id"]')
    @country_options = Element.new(:css, '#AccountFrm_country_id option')
    @region_drop = Element.new(:xpath, '//*[@id="AccountFrm_zone_id"]')
    @region_options = Element.new(:css, '#AccountFrm_zone_id option')
    @city_input = Element.new(:xpath, '//*[@id="AccountFrm_city"]')
    @ZIP_code_input = Element.new(:xpath, '//*[@id="AccountFrm_postcode"]')
    @login_input = Element.new(:xpath, '//*[@id="AccountFrm_loginname"]')
    @pasw_input = Element.new(:xpath, '//*[@id="AccountFrm_password"]')
    @pasw_confirm_input = Element.new(:xpath, '//*[@id="AccountFrm_confirm"]')
    @subscription_radio_btn_yes = Element.new(:xpath, '//*[@id="AccountFrm_newsletter1"]')
    @subscription_radio_btn_no = Element.new(:xpath, '//*[@id="AccountFrm_newsletter0"]')
    @privacy_checkbox = Element.new(:xpath, '//*[@id="AccountFrm_agree"]')
    @continue_btn = Element.new(:css, '#AccountFrm > div.form-group > div > div > button')
    @registration = Element.new(:css, '#maincontainer > div > div.col-md-9.col-xs-12.mt20 > div > h1 > span.maintext')
  end  

  def visit
    Capybara.visit('/index.php?rt=account/create')
  end

  def fill_first_name(text)
    @first_name_input.send_keys(text)
  end
    
  def fill_last_name(text)
    @last_name_input.set(text)
  end

  def fill_email(text)
    @email_input.set(text)
  end

  def fill_adress1(text)
    @adress1_input.set(text)
  end

  def select_contry(value)
    @country_drop.click
    Capybara.ignore_hidden_elements = false
    Capybara.find(@country_options.path, text: /#{value}/i, match: :first).click
  end

  def select_region(value)
    @region_drop.click
    Capybara.ignore_hidden_elements = false
    Capybara.find(@region_options.path, text: /#{value}/i, match: :first).click
  end

  def fill_city(text)
    @city_input.set(text)
  end

  def fill_ZIP_code(text)
    @ZIP_code_input.set(text)
  end

  def fill_login(text)
    @login_input.set(text)
  end

  def fill_pasw(text)
    @pasw_input.set(text)
  end

  def fill_pasw_confirm(text)
    @pasw_confirm_input.set(text)
  end

  def select_subscription_radio_btn(radio_btn)
    if radio_btn ==1
     @subscription_radio_btn_yes.click
    else
     @subscription_radio_btn_no.click
    end        
  end

  def select_privacy_checkbox
    @privacy_checkbox.click    
  end

  def continue
    Capybara.ignore_hidden_elements = false
    @continue_btn.click
  end

  def registration_confirmation
    @registration.text
  end
  
end