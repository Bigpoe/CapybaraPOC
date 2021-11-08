# Add the 'pages' folder into the $LOAD_PATH global variable
location_pages = File.expand_path("../../../pages", __FILE__)
$LOAD_PATH.unshift(location_pages)

# require 'locators'
require "login"
require "home"
require "productDetail"
# require "shoppingCart"


describe 'Login Tests With Capybara', type: :feature do

  before(:each) do 
    visit '/' ## Navigate to the page defined in 'spec_helper.rb'
  end
    
  it 'Do login' do
    # visit 'https://www.saucedemo.com/' ## Explicit way to navigate to a website

    login_page = Login.new()
    login_page.loginProcess()

    # expect(page).to have_css('span', text: 'PRODUCTS')
    expect(page).to have_xpath('//span[@class="title"]', text: 'PRODUCTS')

    home_page = Home.new()
    home_page.clickSauceLabBoltTShirt()

    product_detail_page = ProductDetail.new()
    product_detail_page.addItemToCart()
    expect(page).to have_xpath('//button[@class="btn btn_secondary btn_small btn_inventory"]', text: 'REMOVE')
    product_detail_page.clickShoppingCart()

    expect(page).to have_xpath('//span[@class="title"]', text: 'YOUR CART')
  end

end
