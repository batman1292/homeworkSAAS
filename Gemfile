source 'https://rubygems.org'

ruby '1.9.3'
gem 'rails', '3.2.18'
gem 'omniauth-facebook'
gem 'heroku'

gem 'rcov', '0.9.11'
gem 'FakeWeb'
gem 'minitest', '4.7.5'
#gem 'themoviedb'

# add to end of Gemfile
group :test, :development do
  gem 'rspec-rails'
  gem 'ZenTest', '4.11'
  gem 'autotest-rails'
  gem 'cucumber-rails', :require => false
  gem 'cucumber-rails-training-wheels' # some pre-fabbed step definitions
  gem 'database_cleaner' # to clear Cucumber's test database between runs
  gem 'capybara'         # lets Cucumber pretend to be a web browser
  gem 'launchy'          # a useful debugging aid for user stories
end
#>>>>>>> bat-rspace

#group :test do
#  gem 'rspec-rails'
#  gem 'autotest-rails'
#  gem 'ZenTest', '4.8.3'
#end

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git

group :development, :test do
  gem 'sqlite3'
end
group :production do
  gem 'pg'
  gem 'rails_12factor'  # Heroku-specific production settings
end

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer', :platforms => :ruby

  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'

gem 'haml'

group :development, :test do
  gem 'debugger'
end


# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the app server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'debugger'
