def init_locators()
    locators = {
        ## URL ##
        'url' => 'https://www.saucedemo.com/',
        
        ## Login Page ##
        'email_input' => 'Username',
        'password_input' => 'Password',
        'login_button' => '//input[@id="login-button"]',
        
        ## Home Page ##
        'sauce_lab_bolt_t_shirt' => '//div[text() = \'Sauce Labs Bolt T-Shirt\']',
        'shopping_cart_icon' => '//a[@class="shopping_cart_link"]',
        
        ## Product Details Page ##
        'add_to_cart_button' => 'Add to cart',
    }
    return locators
end
