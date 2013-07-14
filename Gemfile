source "http://ruby.taobao.org"

gem 'rails', '4.0.0'
gem 'mysql2'

group :assets do
  gem 'sass-rails', '~> 4.0.0'
  gem 'compass-rails'
  gem 'coffee-rails', '~> 4.0.0'
  gem 'uglifier', '>= 1.3.0'
end

gem 'jquery-rails'
gem 'turbolinks'

## 用户系统
gem 'omniauth'
gem 'omniauth-yammer'

## 数据
gem 'paranoia', '~> 2.0'

## 表单
gem 'simple_form'

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

