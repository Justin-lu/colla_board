# source 'https://rubygems.org'
source "http://ruby.taobao.org"

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.0.0'

# Use mysql as the database for Active Record
gem 'mysql2'

# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.0'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'

# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'

# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
# gem 'jbuilder', '~> 1.2'

# group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  # gem 'sdoc', require: false
# end

group :development, :test do
  gem "pry"
  gem "pry-nav"
end

group :development do
  # gem "capistrano", ">= 2.15", require: false
  gem "quiet_assets"
  gem "thin"
end

group :test do
  gem 'factory_girl_rails', ">= 4.0"
  gem "minitest", "< 5.0"               # Got lots of warning when higher than 5.0
  gem "simplecov", require: false
  gem 'ffaker'                          # 数据伪造器
  gem 'database_cleaner'                # Clean database for testing
end

# Use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# Use unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]
