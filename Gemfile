source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.1.0"

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails', branch: 'main'
gem "rails", "~> 6.1.7", ">= 6.1.7.3"
# Use Puma as the app server
gem "puma", "~> 5.0"
# Use SCSS for stylesheets
gem "sass-rails", ">= 6"
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem "turbolinks", "~> 5"
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem "jbuilder", "~> 2.7"
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use Active Model has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Active Storage variant
# gem 'image_processing', '~> 1.2'

# Reduces boot times through caching; required in config/boot.rb
gem "bootsnap", ">= 1.4.4", require: false
gem "cssbundling-rails"
gem "friendly_id"
gem "jsbundling-rails", "~> 1.1"
gem "pg"
gem "simple_form"
gem "yard"

group :development do
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem "web-console", ">= 4.1.0"
  # Display performance information such as SQL time and flame graphs for each request in your browser.
  # Can be configured to work on production as well see: https://github.com/MiniProfiler/rack-mini-profiler/blob/master/README.md
  gem "listen", "~> 3.3"
  gem "rack-mini-profiler", "~> 2.0"
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem "spring"
  gem "bullet"
  gem "byebug", platforms: %i[mri mingw x64_mingw]
  gem "letter_opener"
  gem "pry"
  gem "pry-rails"
  gem "rubocop", require: false
  gem "rubocop-performance", require: false
  gem "rubocop-rails", require: false
  gem "rubocop-rspec", require: false
  gem "solargraph", "~> 0.49.0", group: :development
end

group :development, :test do
  gem "capybara"
  gem "factory_bot_rails"
  gem "faker"
  gem "formulaic"
  gem "guard"
  gem "guard-livereload"
  gem "rspec"
  gem "rspec-rails"
  gem "shoulda-matchers"
  gem "timecop"
  gem "webmock"
end
gem "avo"

gem "dockerfile-rails", ">= 1.2", :group => :development

gem "devise", "~> 4.9"

gem "pundit", "~> 2.3"

gem "annotate", "~> 3.2"

gem "heroicon", "~> 1.0"

gem "image_processing", "~> 1.12"

gem "stimulus-rails", "~> 1.2"

gem "turbo-rails", "~> 1.4"

gem "ahoy_matey", "~> 4.2"
gem "ahoy_captain", "~> 0.91"

gem "geocoder", "~> 1.8"
