# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.5'

gem 'jbuilder', '~> 2.7'
gem 'pg', '>= 0.18', '< 2.0'
gem 'puma', '~> 4.1'
gem 'rails', '~> 6.1', '>= 6.0.3.5'
gem 'sass-rails', '>= 6'
gem 'turbolinks', '~> 5'
gem 'webpacker', '~> 4.0'
# gem 'bcrypt', '~> 3.1.7'
gem 'bootsnap', '>= 1.4.2', require: false

group :development, :test do
  gem 'pry-byebug', '~> 3.9'
  gem 'pry-rails', '~> 0.3.9'
  gem 'rspec-rails', '~> 4.0', '>= 4.0.1'
  gem 'rubocop', '~> 0.89.1'
end

group :development do
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'listen', '~> 3.2'
  gem 'web-console', '>= 3.3.0'
end

group :test do
  gem 'capybara', '~> 3.33'
  gem 'factory_bot_rails'
  gem 'simplecov', '0.17.1', require: false
  gem 'simplecov-console', require: false
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
