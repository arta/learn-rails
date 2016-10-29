source 'https://rubygems.org'
ruby '2.2.4'
gem 'rails', '4.2.6'

# Ruby defaults
# gem 'sqlite3' # had to move to :development; Heroku screamed
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.1.0'
gem 'jquery-rails'
gem 'turbolinks'
gem 'jbuilder', '~> 2.0'
group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'
  # 10-29-16: $ rake test:
  # Web Console is activated in the test environment, which is
  # usually a mistake. To ensure it's only activated in development
  # mode, move it to the development group of your Gemfile:
  # Access an IRB console on exception pages or by using <%= console %> in views
  # gem 'web-console', '~> 2.0'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
end
# learn-rails
gem 'foundation-rails', '~> 5.5'
gem 'gibbon'
gem 'high_voltage'
gem 'simple_form'
group :development do
  gem 'better_errors'
  gem 'quiet_assets'
  gem 'rails_layout'
  # Ruby defaults, had to move it here; Heroku screamed
  gem 'sqlite3'
  # 10-29-16: $ rake test:
  # Web Console is activated in the test environment, which is
  # usually a mistake. To ensure it's only activated in development
  # mode, move it to the development group of your Gemfile:
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console'#, group: :development
end
group :production do
  gem 'pg'
  gem 'rails_12factor'
end
group :test do
  gem 'minitest-spec-rails'
  gem 'minitest-rails-capybara'
end
