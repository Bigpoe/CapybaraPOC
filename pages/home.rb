include Capybara::DSL

location_utils = File.expand_path("../../utils", __FILE__)
$LOAD_PATH.unshift(location_utils)

require 'locators'
require 'test_data'

class Home
    
    def initialize()
        locators = init_locators()
        @sauce_lab_bolt_t_shirt = locators['sauce_lab_bolt_t_shirt']
    end

    def clickSauceLabBoltTShirt()
        find(:xpath, @sauce_lab_bolt_t_shirt).click
        # find(:xpath, '//div[text() = \'Sauce Labs Bolt T-Shirt\']').click
    end

end



