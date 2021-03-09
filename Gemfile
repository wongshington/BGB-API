source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.7.1'

# make sure references to sqlite3 gem ONLY appear in dev/test groups
group :development, :test do
  gem 'sqlite3'
end 

# make sure the following gems are in your production group:
group :production do
  gem 'pg'              # use PostgreSQL in production (Heroku)
end

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 6.0.3', '>= 6.0.3.4'
# Use Puma as the app server
gem 'puma', '~> 3.11'
# Use ActiveModel has_secure_password
gem 'bcrypt', '~> 3.1.7'
# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.1.0', require: false

# psql
#gem 'pg', '~> 1.2.3'

gem 'pry-rails'

# auth
gem 'devise'
gem 'omniauth'
gem 'devise_token_auth'
gem 'rack-cors', :require => 'rack/cors'
gem 'omniauth-facebook'
gem 'omniauth-instagram'
gem 'omniauth-twitter'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a
  # debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]

  gem 'rspec-rails'
  gem 'factory_bot_rails'
  gem 'faker'
end

# setup Cucumber, RSpec, Guard support
group :test do
#  gem 'rspec-rails'
  gem 'guard-rspec'
  gem 'simplecov', :require => false
  gem 'cucumber-rails', :require => false
  gem 'cucumber-rails-training-wheels' # basic imperative step defs like "Then I should see..."
  gem 'database_cleaner' # required by Cucumber
end

group :development do
  gem 'listen', '>= 3.0.5', '< 3.2'
  # Spring speeds up development by keeping your application running in
  # the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'annotate'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
