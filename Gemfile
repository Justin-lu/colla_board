source "http://ruby.taobao.org"

gem 'rails', '4.0.0'
gem 'mysql2'

# coffee script
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.0.0'
gem 'therubyracer', platforms: :ruby

# sass
gem 'sass-rails', '~> 4.0.0'
gem 'bootstrap-sass', '~> 2.3.2.1'
gem 'jquery-rails'
gem 'rails-i18n'

# Markdown Parser
gem 'redcarpet', require: 'redcarpet/compat'

## 用户系统
gem 'omniauth'
gem 'omniauth-yammer'

## 数据
gem 'paranoia', '~> 2.0'

## 表单
gem 'simple_form', '>= 3.0.0.rc'

group :development, :test do
  gem "pry"
  gem "pry-nav"
end

group :development do
  gem "thin"
  gem "quiet_assets"
  gem "capistrano", ">= 2.15", require: false
end

group :test do
  gem 'factory_girl_rails', '>= 4.0.0'
  gem "minitest", '~> 4.7.5'
  gem 'ffaker'
  gem "database_cleaner", '1.0.0.RC1'
  gem "simplecov", require: false
end

