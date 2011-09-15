source 'http://rubygems.org'

gem 'rails', ' ~> 3.1.0'

# Use MongoDB instead of a relational database
gem "mongoid", ">= 2.0.2"

# Asset template engines
gem 'sass-rails', "~> 3.1.0"
gem 'compass'
gem 'haml-rails'
gem 'coffee-script'
gem 'uglifier'
gem 'jquery-rails'

gem "therubyracer", ">= 0.8.2"
gem "bson_ext", ">= 1.3.1"

gem 'thin'

group :development do
	gem "nifty-generators" # Ryanb's very nifty set of Rails generators
	gem 'wirble' # IRB code completion and syntax highlighting
	gem 'hirb' # More info here: http://github.com/cldwalker/hirb
	gem 'awesome_print', :require => 'ap' # Console candy
	gem 'ruby-debug19', :require => 'ruby-debug'
	gem 'annotate' # Prints db schema tidbits in all the models, tests, and fixtures, also shows `rake routes` output in routes.rb
  gem 'cucumber_scaffold' # https://github.com/andyw8/cucumber_scaffold
end

group :test, :development do
	gem "cucumber-rails"
	gem 'pickle' # many extensions to cucumber
	gem "rspec-rails", ">= 2.6.1"
	gem "mongoid-rspec", ">= 1.4.4"
	gem "factory_girl_rails", ">= 1.1.beta1"
  gem 'jasmine' # Javascript testing tool using an RSpec-like structure
end

group :test do
	gem "capybara", ">= 1.0.0"
	gem "database_cleaner", ">= 0.6.7"
	gem "launchy", ">= 0.4.0"
end

########
# Gems only for certain operating system environments.
#
# Avoid installing those which you don't need by adding, for example, `--without windows linux`
# to your `bundle install` command. You should only need do this once, as it will be remembered.q

# Mac OS X
group :darwin do

  # The filesystem event and system notifications that Guard wants, for OS X
  gem 'growl_notify', :require => false # Growl notifications
  gem 'rb-fsevent',   :require => false # FSEvent support

end

# Linux
group :linux do

  # The filesystem event and system notifications that Guard wants, for Linux/Unix
  gem 'libnotify',    :require => false # Visual notifications
  gem 'rb-inotify',   :require => false # inotify support

end

# Windows; commented out until we need them
=begin
group :windows do

  # The filesystem event and system notifications that Guard wants, for Windows
  gem 'rb-notifu',    :require => false # Visual notifications
  gem 'rb-fchange',   :require => false # Directory Change Notification support
  gem 'win32console', :require => false # Support for console colors

end
=end
