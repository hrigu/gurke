source 'http://rubygems.org'
#source "http://gems.github.com"


gem 'rails', '3.1.0'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

gem 'sqlite3'
gem 'jquery-rails'
gem "haml-rails"
gem "simple_form"

#for authentication
gem "bcrypt-ruby", :require => "bcrypt"
gem "cancan"

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails', "  ~> 3.1.0"
  gem 'coffee-rails', "~> 3.1.0"
  gem 'uglifier'
end

group :test do
  # Pretty printed test output
  gem 'turn', :require => false
  gem 'database_cleaner'
  gem 'rails3-generators' #mainly for factory_girl & simple_form at this point
  gem 'factory_girl_rails'
  gem 'cucumber-rails'
  gem 'capybara'
  gem 'mocha'

  #gem 'webrat'
  #generators, for examples for authentications
  #gem 'nifty-generators'

end

#to enable the rake tasks, rspec-rails must be in the development group: see https://www.relishapp.com/rspec/rspec-rails and https://github.com/rspec/rspec-rails/issues/438
group :test, :development do
# To use debugger
# gem 'ruby-debug19', :require => 'ruby-debug'
# gem 'ruby-debug-base19x'
# gem 'ruby-debug-ide19'

  #gem 'spork', '~> 0.9.0.rc'
  gem 'rspec-rails', "~> 2.4"
  gem 'rcov'
end

# for javascript engine
gem 'execjs'
gem 'therubyracer'


# for generate doc
#gem "RedCloth"

gem "ci_reporter"


# Bundle the extra gems:
#gem 'sqlite3-ruby', :require => 'sqlite3'

