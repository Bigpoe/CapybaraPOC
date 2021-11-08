include Capybara::DSL

location_utils = File.expand_path("../../utils", __FILE__)
$LOAD_PATH.unshift(location_utils)

require 'locators'
require 'test_data'


class Login
    
    def initialize()
        locators = init_locators()
        @email_input = locators['email_input']
        @password_input = locators['password_input']
        @login_button = locators['login_button']
    end

    def loginProcess()
        test_data = init_test_data() ## Get the testing data

        fill_in(@email_input, with: test_data['correct_username'])
        fill_in(@password_input, with: test_data['correct_password'])
        find(:xpath, @login_button).click
    end

end
