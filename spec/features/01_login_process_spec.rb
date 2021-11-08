# Add the 'pages' folder into the $LOAD_PATH global variable
location_pages = File.expand_path("../../../pages", __FILE__)
$LOAD_PATH.unshift(location_pages)

# require 'locators'
require "login"


describe 'Login Tests With Capybara', type: :feature do

  before(:each) do 
    visit '/' ## Navigate to the page defined in 'spec_helper.rb'
  end
  
  after(:each) do 
    visit 'https://relishapp.com/rspec/rspec-core/v/3-9/docs/metadata/current-example'
  end
    
  it 'Do login' do
    # visit 'https://www.saucedemo.com/' ## Explicit way to navigate to a website

    login_page = Login.new()
    login_page.loginProcess()

    # expect(page).to have_css('span', text: 'PRODUCTS')
    expect(page).to have_xpath('//span[@class="title"]', text: 'PRODUCTS')
    # products_label = find(:xpath, '//span[@class="title"]').text
    # expect(products_label).to eq 'PRODUCTS'
  end

end
