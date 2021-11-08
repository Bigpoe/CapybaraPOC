## Setup RSPEC

Install the required gems in the Gemfile `bundle install` .

Run `bundle binstubs rspec-core` to install the RSPEC binstubs. It creates an executable **bin/rspec**

Run `bin/rspec --init` to create the `spec/spec_helper.rb` file.


## Setup sepc_helper.rb File

Add the following lines in the `spec/spec_helper.rb` file to configure Capybara and Rspec, choice the driver and the base web page.

```
require 'capybara/rspec'
Bundler.require
Capybara.default_driver = :selenium_chrome
Capybara.app_host = 'https://www.saucedemo.com'
Capybara.default_max_wait_time = 10
```


## Tests Conventions

Each test file should be stored in a folder named **spec**.

Every test file should contain the `_spec.rb` in the name.


## Execute Test Files

Run `bin/rspec` to execute every test file in the **spec** folder.

Run `bin/rspec path/to/test/file.rb` to execute an specific test file in the **spec** folder.

