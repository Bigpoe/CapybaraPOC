include Capybara::DSL

location_utils = File.expand_path("../../utils", __FILE__)
$LOAD_PATH.unshift(location_utils)

require 'test_data'

class ProductDetail
    
    def initialize()
        locators = init_locators()
        @add_to_cart_button = locators['add_to_cart_button']
        @shopping_cart_icon = locators['shopping_cart_icon']
    end

    def addItemToCart()
        click_on(@add_to_cart_button)
    end

    def clickShoppingCart()
        find(:xpath, @shopping_cart_icon).click
        # driver.find_element(:xpath, @shopping_cart_icon).click()
    end

end
