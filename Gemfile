source "http://ruby.taobao.org"

gem 'rails', '4.0.0'
gem 'mysql2'

group :assets do
  gem 'sass-rails', '~> 4.0.0'
  gem 'compass-rails'
  gem 'coffee-rails', '~> 4.0.0'
  gem 'uglifier', '>= 1.3.0'
  gem 'therubyracer', platforms: :ruby
end

gem 'jquery-rails'
# gem 'turbolinks'
gem 'rails-i18n'

## 用户系统
gem 'omniauth'
gem 'omniauth-yammer'
gem 'mini_magick'
gem 'carrierwave'

## 数据
gem 'paranoia', '~> 2.0'

## 表单
gem 'simple_form', '>= 3.0.0.rc'

## 邮件
# gem 'exception_notification'

group :development, :test do
  gem "pry"
  gem "pry-nav"
end

group :development do
  gem "thin"
  gem "quiet_assets"
  gem "capistrano", ">= 2.15", require: false
# gem 'postmark-rails'
end

group :test do
  gem 'factory_girl_rails', '>= 4.0.0'
  gem "minitest", '~> 4.7.5'
  gem 'ffaker'
  gem 'database_cleaner'
  gem "simplecov", require: false
end

