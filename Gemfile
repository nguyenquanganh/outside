source 'https://rubygems.org'

gem "coffee-rails", "4.2.2"
gem "jbuilder", "2.7.0"
gem "jquery-rails", "4.3.1"
gem "puma", "3.9.1"
gem "rails", "5.1.2"
gem "bcrypt", "3.1.11"
gem "faker", "1.7.3"
gem "will_paginate", "3.1.5"
gem "bootstrap-will_paginate", "1.0.0"
gem "bootstrap-sass", "3.3.7"
gem "sass-rails", "5.0.6"
gem "turbolinks", "5.0.1"
gem "uglifier", "3.2.0"
gem "rails-controller-testing"
gem "omniauth-facebook"

group :development do
  gem "listen", "3.0.8"
  gem "spring", "2.0.2"
  gem "spring-watcher-listen", "2.0.1"
  gem "web-console", "3.5.1"
end

group :development, :test do
  # Call "byebug" anywhere in the code to stop execution and get a debugger console
  gem "sqlite3", "1.3.13"
  gem 'byebug',  '9.0.6', platform: :mri
  gem "rspec"
  gem "rspec-rails"
  gem "rspec-collection_matchers"
  gem "factory_girl_rails"
  gem "better_errors"
  gem "guard-rspec", require: false
  gem "database_cleaner"
  gem "brakeman", require: false
  gem "jshint"
  gem "bundler-audit"
  gem "rubocop", require: false
  gem "rubocop-checkstyle_formatter", require: false
  gem "scss_lint"
  gem "scss_lint_reporter_checkstyle", require: false
  gem "rails_best_practices"
  gem "reek"
  gem "railroady"
  gem "autoprefixer-rails"
end

group :test do
  gem "simplecov", require: false
  gem "simplecov-rcov", require: false
  gem "simplecov-json"
  gem "shoulda-matchers"
  gem "minitest", group: :test
  gem "minitest-reporters", group: :test
end

group :production do
  gem "pg", "0.18.4"
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem "tzinfo-data", platforms: [:mingw, :mswin, :x64_mingw, :jruby]
